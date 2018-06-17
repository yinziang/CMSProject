<%--
  Created by IntelliJ IDEA.
  User: huaxin
  Date: 2018/6/14
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html lang="en">
<head>
    <meta charset="utf-8">
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

<%-- 主体部分显示的代码--%>
<div id="global">
    <div class="container-fluid cm-container-white">
        <h2 style="margin-top:0;text-align: center;">修改解决方案的界面</h2>
    </div>
    <div class="container-fluid">
        <div class="row cm-fix-height">
            <div class="form-group col" style="margin-top:20px;" >
                <button type="submit" class="btn btn-primary col-sm-6" style="width: 50%;margin: auto" onclick="clickUpdate()">修改</button>
                <button type="submit" class="btn btn-primary col-sm-6" style="width: 50%;margin: auto" onclick="clickSave()">保存</button>
            </div>
        </div>
        <div class="row cm-fix-height">
            <div class="col-sm-12">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <img id="brief-img" src="/img/sass-less.png" alt="Less support" class="img-responsive">
                        <form style="margin-top: 10px;font-size: large" action="/admin/uploadFile" enctype="multipart/form-data" method="post">
                            <div class="form-group">
                                <input type="file" name="file" class="form-control-file" id="brief-img-up" value="修改图片" disabled>
                                <input type="txt" name="imageUrl" id="page-image-url" hidden>
                                <input type="submit" id="page-image-up" value="上传" disabled/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <%--<div class="col-sm-12">--%>
                <%--<div class="panel panel-default">--%>
                    <%--<div class="panel-body">--%>
                        <%--<img src="/img/sass-less.png" alt="Less support" class="img-responsive">--%>
                        <%--<br>--%>
                        <%--<p>这里是上传一个解决方案图</p>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</div>
<%-- end 主体部分显示的代码--%>

<script src="/js/lib/jquery-2.1.3.min.js"></script>
<script src="/js/jquery.mousewheel.min.js"></script>
<script src="/js/jquery.cookie.min.js"></script>
<script src="/js/fastclick.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/clearmin.min.js"></script>
<script src="/js/demo/home.js"></script>

<script>

    $(function () {
        load();
    });

    var data;

    /**
     * 加载时执行的函数
     */
    function load() {
        $.ajax({
            type: 'GET',
            dataType: 'json',
            url: '/index/solutions',
            success: function (res) {
                console.log(res)
                data = res.data;
                if (res.status == 200) {
                    console.log("操作成功")
                    document.getElementById("brief-img").src = res.data;

                    document.getElementById("page-image-url").value = res.data;
                } else {
                    console.log("操作失败")
                }
            },
            error: function (xhr, type) {
                console.log("错误信息：" + xhr.valueOf(), type)
            }
        });
    }

    function clickUpdate() {
        $('#page-image-up').attr("disabled",false);
        $('#brief-img-up').attr("disabled",false);
    }

    function clickSave() {
        console.log("点击了保存");

        // console.log(data[0].content, data[1].content)
        //
        // data[0].content = $('#brief-txt-1').val();
        // data[1].content = $('#brief-txt-2').val();
        //
        // console.log(data[0].content, data[1].content)
        //
        // console.log(data);
        //
        // data = JSON.stringify(data);
        //
        // $.ajax({
        //     type: 'PUT',
        //     url: '/index/updatePages',
        //     contentType: 'application/json;charset=utf-8',
        //     data: data,
        //     success: function (res) {
        //         console.log(res);
        //
        //     },
        //     error: function (xhr, type) {
        //         console.log("错误信息：" + xhr.valueOf(), type);
        //     }
        // });
        $('#page-image-up').attr("disabled",true);
        $('#brief-img-up').attr("disabled",true);
    }

</script>

</body>
</html>

