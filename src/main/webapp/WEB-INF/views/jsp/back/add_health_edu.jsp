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
        <h2 style="margin-top:0;text-align: center;">修改健康宣教界面</h2>
    </div>
    <div class="container-fluid">
        <div class="panel panel-default">
            <div class="panel-heading">添加健康宣教</div>
            <div class="panel-body">
                <div class="form-group">
                    <label>Title</label>
                    <input type="text" id="title" class="form-control" placeholder="Enter title">
                </div>
                <label>Content</label>
                <div id="summernote"></div>
                <br />
                <div class="form-group text-right" style="margin-top: auto">
                    <button id="saveBtn" type="submit" class="btn btn-primary"
                            onclick="clickSave()">保存</button>
                </div>
                <label>Thumbnail</label>
                <div class="panel-body">
                    <img id="brief-img1" src="/img/sass-less.png" alt="Less support" class="img-responsive">
                    <form style="margin-top: 10px;font-size: large" action="/admin/uploadThumbnail" enctype="multipart/form-data" method="post">
                        <div class="form-group">
                            <input type="file" name="file" class="form-control-file" id="brief-img-up" value="修改图片" disabled>
                            <input type="number" name="id" id="page-id" hidden>
                            <input type="submit" id="page-image-up" value="上传" disabled/>
                        </div>
                    </form>
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
<%--<script src="/js/demo/home.js"></script>--%>

<script>
    /**
     * 这个是联系我们对应的js
     */
    $(function () {
        // load();

        $('#summernote').summernote({
            lang: 'zh-CN', // default: 'en-US'
            height: 300,
            onImageUpload: function(files, editor, welEditable) {
                sendFile(files[0],editor,welEditable);
            }
        });
    });

    var data;
    var Id;

    //ajax上传图片
    function sendFile(file,editor,welEditable) {
        var data1 = new FormData();
        console.log("file",file);
        data1.append("file", file);
        $.ajax({
            data: data1,
            type: "POST",
            url: "/admin/uploadImg",
            cache: false,
            contentType: false,
            processData: false,
            success: function(res) {
                console.log(res)
                editor.insertImage(welEditable, res.data);
            }
        });
    }

    function clickSave() {
        console.log("点击了保存:date:"+data);

        var title = $('#title').val();
        var content = $('#summernote').code();

        var str = {"title":title, "content":content};
        console.log(str);

        data = JSON.stringify(str);

        $.ajax({
            type: 'POST',
            url: '/admin/healthEdus',
            contentType: 'application/json;charset=utf-8',
            data: data,
            success: function (res) {
                console.log(res);
                console.log(res.data);
                document.getElementById("page-id").value = res.data;
            },
            error: function (xhr, type) {
                console.log("错误信息：" + xhr.valueOf(), type);
            }
        });

        $('#title').attr("disabled",true);
        $('#saveBtn').attr("disabled",true);

        $('#page-image-up').attr("disabled",false);
        $('#brief-img-up').attr("disabled",false);
    }


</script>

</body>
</html>

