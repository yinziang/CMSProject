<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html >
<html lang="en">
<head>
    <meta charset="utf-8">
    <base href="/">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-clearmin.min.css">
    <link rel="stylesheet" type="text/css" href="/css/roboto.css">
    <link rel="stylesheet" type="text/css" href="/css/material-design.css">
    <link rel="stylesheet" type="text/css" href="/css/small-n-flat.css">
    <link rel="stylesheet" type="text/css" href="/css/font-awesome.min.css">
    <title>Clearmin template</title>
</head>
<body class="cm-no-transition cm-1-navbar">
<jsp:include page="menu.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<div id="global">
    <div class="container-fluid cm-container-white">
        <h2 style="margin-top:0;text-align: center">更新联系我们信息界面</h2>
    </div>
    <div class="container-fluid">
        <div class="row cm-fix-height">

            <div class="panel panel-default">
                <div class="panel-heading">联系我们信息列表</div>
                <table class="table">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>名称</th>
                        <th></th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody id="contact-body">

                    <c:forEach items="${moduleList}" var="module">
                        <tr>
                            <th scope="row">${module.id}</th>
                            <td><input style="width: 70%" type="text" name="mname${module.id}" id="mname${module.id}" value="${module.mname}" disabled></td>
                            <td><button type="button" class="btn-primary" onclick="clickUpdate(${module.id})">修改</button></td>
                            <td><button type="button" class="btn-primary" onclick="clickSave(${module.id})">保存</button></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</div>

<script src="/js/lib/jquery-2.1.3.min.js"></script>
<script src="/js/jquery.mousewheel.min.js"></script>
<script src="/js/jquery.cookie.min.js"></script>
<script src="/js/fastclick.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/clearmin.min.js"></script>
<script src="/js/demo/home.js"></script>
<script>
    function clickUpdate(id){
        console.log(id)
        $('input').attr("disabled",true);
        var s = '#mname'+id;
        console.log(s)
        $(s).attr("disabled",false);
    }

    function clickSave(id){
        console.log("点击了保存");
        var module = {
            id: id,
            mname: ''
        }

        module.mname = $('#mname'+id).val();
        console.log(module);

        module = JSON.stringify(module);

        $.ajax({
            type: 'POST',
            url: '/admin/updateModules',
            contentType: 'application/json;charset=utf-8',
            dataType: 'json',
            data: module,
            success: function(res) {
                console.log(res);
                $('#mname'+id).val(res.data.mname);
            },
            error: function(xhr, type) {
                console.log("错误信息："+xhr.valueOf(), type);
            }
        });

        $('input').attr("disabled",true);
    }

</script>
</body>
</html>

