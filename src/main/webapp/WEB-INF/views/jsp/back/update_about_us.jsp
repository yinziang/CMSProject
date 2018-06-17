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
    <link rel="stylesheet" type="text/css" href="/css/summernote.css">
    <title>Clearmin template</title>
</head>
<body class="cm-no-transition cm-1-navbar">
<jsp:include page="menu.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>

<%-- 主体部分显示的代码--%>
<div id="global">
    <div class="container-fluid cm-container-white">
        <h2 style="margin-top:0;text-align: center;">修改我们的简介界面</h2>
    </div>
    <div class="container-fluid">
        <div class="row cm-fix-height">
            <div class="form-group col" style="margin-top:20px;" >
                <button type="submit" class="btn btn-primary col-sm-6" style="width: 50%;margin: auto" onclick="clickUpdate()">修改</button>
                <button id="save-btn" disabled type="submit" class="btn btn-primary col-sm-6" style="width: 50%;margin: auto" onclick="clickSave()">保存</button>
            </div>
        </div>
        <div class="row cm-fix-height">
            <div class="col-sm-6">
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
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-heading">修改内容</div>
                    <div class="panel-body">
                        <div id="summernote1"></div>
                    </div>
                </div>
            </div>
        </div>
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
<script src="/js/summernote.min.js"></script>
<script src="/js/demo/notepad.js"></script>
<script src="/js/demo/home.js"></script>

<script>
    /**
     * 这个是联系我们对应的js
     */
    $(function () {
        load();
        $('#summernote1').summernote({
            height: 420
        });
    });

    var data;

    /**
     * 加载时执行的函数
     */
    function load() {
        $.ajax({
            type: 'GET',
            dataType: 'json',
            url: '/index/aboutUs', // 数字1表示的是partId,即表示第一个部分：肾畅简介的页面内容
            success: function (res) {
                console.log(res)
                data = res.data;
                if (res.status == 200) {
                    console.log("操作成功")
                    document.getElementById("brief-img").src = res.data.imageUrl;
                    $('#summernote1').code(res.data.content);
                    document.getElementById("page-image-url").value = res.data.imageUrl;
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
        $('#save-btn').attr("disabled",false);
        $('#page-image-up').attr("disabled",false);
        $('#brief-img-up').attr("disabled",false);
    }

    function clickSave() {
        console.log("点击了保存");
        console.log(data.content)

        data.content = $('#summernote1').code();

        console.log(data);

        data = JSON.stringify(data);

        $.ajax({
            type: 'PUT',
            url: '/index/aboutUs',
            contentType: 'application/json;charset=utf-8',
            data: data,
            success: function (res) {
                console.log(res);

            },
            error: function (xhr, type) {
                console.log("错误信息：" + xhr.valueOf(), type);
            }
        });
        $('#save-btn').attr("disabled",true);
        $('#page-image-up').attr("disabled",true);
        $('#brief-img-up').attr("disabled",true);
    }

</script>

</body>
</html>

