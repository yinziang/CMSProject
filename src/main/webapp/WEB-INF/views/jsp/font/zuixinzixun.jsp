<%--
  Created by IntelliJ IDEA.
  User: huaxin
  Date: 2018/6/17
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>

<head>
    <title>Home</title>
    <jsp:include page="base.jsp"></jsp:include>
</head>

<body>
<div class="wrapper">
    <div class="wrap">
        <div class="wrap_inner">
            <jsp:include page="header.jsp"></jsp:include>
            <div><img src="/images/font/jianjie-pic1.jpg"></div>
        </div>

        <!-- 我们的简介 -->
        <div style="margin-top: 20px;">
            <h3>
                <center><hr style="margin-top: 30px;margin-bottom: 20px">NEWS 最新资讯</center>
            </h3>
            <c:forEach items="${newsLists}" var="news" varStatus="status">
                <div class="col-lg-12 col-md-12 col-sm-12 news-card zixun">
                    <div class="col-lg-3 col-md-3 col-sm-3">
                        <a href="/font/newsDetails/${news.id}" ><img src="${news.thumbnail}"></a>
                    </div>
                    <div class="col-lg-9 col-md-9 col-sm-9">
                        <p><a href="/font/newsDetails/${news.id}">${news.title}</a></p>
                        <p>编辑时间：${news.updateAt}</p>
                        <p>${news.description}</p>
                    </div>
                </div>
                <hr class="hr-line" style="margin-top: 20px">
            </c:forEach>
        </div>

        <jsp:include page="tool-page.jsp"></jsp:include>
    </div>
</div>

<div class="clear"></div>
<hr/>
<jsp:include page="foot.jsp"></jsp:include>

</body>

</html>

