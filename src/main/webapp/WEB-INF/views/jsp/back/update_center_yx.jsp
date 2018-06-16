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
        <h2 style="margin-top:0;text-align: center;">修改阳新血透中心界面</h2>
    </div>
    <div class="container-fluid">
        <div class="row cm-fix-height">
            <div class="form-group col" style="margin-top:20px;" >
                <button type="submit" class="btn btn-primary col-sm-6" style="width: 50%;margin: auto" onclick="clickUpdate()">修改</button>
                <button type="submit" class="btn btn-primary col-sm-6" style="width: 50%;margin: auto" onclick="clickSave()">保存</button>
            </div>
        </div>
        <div class="row cm-fix-height">
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <img id="brief-img1" src="/img/sass-less.png" alt="Less support" class="img-responsive">
                        <form style="margin-top: 10px;font-size: large" action="/admin/uploadFile" enctype="multipart/form-data" method="post">
                            <div class="form-group">
                                <input type="file" name="file" class="form-control-file" id="brief-img1-up" value="修改图片" disabled>
                                <input type="txt" name="imageUrl" id="page1-image-url" hidden>
                                <input type="submit" id="page1-image-up" value="上传" disabled/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-heading">修改内容</div>
                    <div class="panel-body">
                        <textarea class="form-control" id="brief-txt-1" rows="10" disabled></textarea>
                    </div>
                </div>
            </div>
        </div>
        <div class="row cm-fix-height">
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-heading">修改内容</div>
                    <div class="panel-body">
                        <textarea class="form-control" id="brief-txt-2" rows="10" disabled></textarea>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <img id="brief-img2" src="/img/sass-less.png" alt="Less support" class="img-responsive">
                        <form style="margin-top: 10px;font-size: large"  action="/admin/uploadFile" enctype="multipart/form-data" method="post">
                            <div class="form-group">
                                <input type="file" name="file" class="form-control-file" id="brief-img2-up" value="修改图片" disabled>
                                <input type="txt" name="imageUrl" id="page2-image-url" hidden>
                                <input type="submit" id="page2-image-up" value="上传" disabled/>
                            </div>
                        </form>
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
    });

    var data;

    /**
     * 加载时执行的函数
     */
    function load() {
        $.ajax({
            type: 'GET',
            dataType: 'json',
            url: '/admin/parts/11/pages', // 数字1表示的是partId,即表示第一个部分：肾畅简介的页面内容
            success: function (res) {
                console.log(res)
                data = res.data;
                if (res.status == 200) {
                    console.log("操作成功")
                    document.getElementById("brief-img1").src = res.data[0].imageUrl;
                    document.getElementById("brief-img2").src = res.data[1].imageUrl;
                    document.getElementById("brief-txt-1").value = res.data[0].content;
                    document.getElementById("brief-txt-2").value = res.data[1].content;
                    document.getElementById("page1-image-url").value = res.data[0].imageUrl;
                    document.getElementById("page2-image-url").value = res.data[1].imageUrl;
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
        $('#brief-txt-1').attr("disabled",false);
        $('#brief-txt-2').attr("disabled",false);
        $('#page1-image-up').attr("disabled",false);
        $('#page2-image-up').attr("disabled",false);
        $('#brief-img1-up').attr("disabled",false);
        $('#brief-img2-up').attr("disabled",false);
    }

    function clickSave() {
        console.log("点击了保存");

        console.log(data[0].content, data[1].content)

        data[0].content = $('#brief-txt-1').val();
        data[1].content = $('#brief-txt-2').val();

        console.log(data);

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
        $('#brief-txt-1').attr("disabled",true);
        $('#brief-txt-2').attr("disabled",true);
        $('#page1-image-up').attr("disabled",true);
        $('#page2-image-up').attr("disabled",true);
        $('#brief-img1-up').attr("disabled",true);
        $('#brief-img2-up').attr("disabled",true);
    }

</script>

</body>
</html>

