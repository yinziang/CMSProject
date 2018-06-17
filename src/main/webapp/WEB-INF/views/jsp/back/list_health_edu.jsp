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
        <h2 style="margin-top:0;text-align: center">更新健康宣教界面</h2>
    </div>
    <div class="container-fluid">
        <div class="row cm-fix-height">

            <div class="panel panel-default">
                <div class="panel-heading">健康宣教列表</div>
                <table class="table">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>标题</th>
                        <th>创建时间</th>
                        <th>最近修改时间</th>
                        <th></th>
                    </tr>
                    </thead>
                    <c:forEach items="${healthEduList}" var="healthEdu" varStatus="status">
                        <tr>
                            <td>${status.index + 1}</td>
                            <td>${healthEdu.title}</td>
                            <td>${healthEdu.createAt}</td>
                            <td>${healthEdu.updateAt}</td>
                            <td><a href="./admin/healthEdus/${healthEdu.id}">修改</a></td>
                        </tr>
                    </c:forEach>

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

</body>
</html>