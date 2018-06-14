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
        <h2 style="margin-top:0;text-align: center;">修改轮播图界面</h2>
    </div>
    <div class="container-fluid">
        <div class="row cm-fix-height">
            <div class="col-sm-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <img src="/img/sass-less.png" alt="Less support" class="img-responsive">
                        <br>
                        <p>slider1</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <img src="/img/devices.png" alt="Responsive across devices" class="img-responsive">
                        <br>
                        <p>slider2</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <img src="/img/components.png" alt="Components" class="img-responsive">
                        <br>
                        <p>slider3</p>
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
<script src="/js/demo/home.js"></script>
</body>
</html>

