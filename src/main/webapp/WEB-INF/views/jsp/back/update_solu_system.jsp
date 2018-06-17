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
        <h2 style="margin-top:0;text-align: center;">修改解决方案-设计规划界面</h2>
    </div>
    <div class="container-fluid">
        <div class="panel panel-default">
            <div class="panel-heading">设计规划</div>
            <div class="panel-body">
                <div class="form-group">
                    <label>Title</label>
                    <input type="text" id="title" class="form-control" placeholder="Enter title" disabled>
                </div>
                <label>Content</label>
                <div id="summernote"></div>
                <div class="form-group text-right" style="margin-top:20px">
                    <button type="submit" class="btn btn-default" onclick="clickUpdate()">启用修改</button>
                    <button id="saveBtn" type="submit" class="btn btn-primary" onclick="clickSave()" disabled>保存修改</button>
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
        load();

        $('#summernote').summernote({
            lang: 'zh-CN', // default: 'en-US'
            height: 300,
            onImageUpload: function(files, editor, welEditable) {
                sendFile(files[0],editor,welEditable);
            }
        });
    });

    var data;

    //ajax上传图片
    function sendFile(file,editor,welEditable) {
        var data1 = new FormData();
        console.log("file",file)
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

    /**
     * 加载时执行的函数
     */
    function load() {
        $.ajax({
            type: 'GET',
            dataType: 'json',
            url: '/admin/parts/8/pages', // 数字1表示的是partId,即表示第一个部分：肾畅简介的页面内容
            success: function (res) {
                console.log(res)
                data = res.data;
                if (res.status == 200) {
                    console.log("操作成功")
                    document.getElementById("title").value = res.data[0].title;
                    $('#summernote').code(res.data[0].content);
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
        $('#title').attr("disabled",false);
        $('#saveBtn').attr("disabled",false);
    }

    function clickSave() {
        console.log("点击了保存:date:"+data);

        data[0].title = $('#title').val();
        data[0].content = $('#summernote').code();

        console.log(data)

        data = JSON.stringify(data);

        $.ajax({
            type: 'PUT',
            url: '/admin/updatePages',
            contentType: 'application/json;charset=utf-8',
            data: data,
            success: function (res) {
                console.log(res);

            },
            error: function (xhr, type) {
                console.log("错误信息：" + xhr.valueOf(), type);
            }
        });

        $('#title').attr("disabled",true);
        $('#saveBtn').attr("disabled",true);
    }


</script>

</body>
</html>

