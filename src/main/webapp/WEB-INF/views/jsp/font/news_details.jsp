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

        <!-- 最新资讯详情 -->
        <div style="margin-top: 20px;">
            <div class="col-lg-12 col-md-12 col-sm-12 zixun">
                <h3>
                    <center>NEWS 最新资讯<hr style="margin-top: 30px"></center>
                </h3>
                <h4 align="center">${newsDetails.title}</h4>
                <p align="center">
                    <span class="date"><span>日期：</span>${newsDetails.updateAt}</span>
                </p>
                <div width="100%">
                    <div>
                        <div style="padding: 0px; margin: 0px;" class="firstRow">
                            ${newsDetails.content}
                        </div>
                    </div>
                </div>
                <p class="typename" style="padding: 3px 0px; margin-top: 20px; margin-bottom: 20px; line-height: 24px;">
                    <strong>所属类别：</strong>&nbsp;最新资讯
                </p>
                <p>
                    <br/>
                </p>
            </div>
        </div>

        <jsp:include page="tool-page.jsp"></jsp:include>
    </div>
</div>

<div class="clear"></div>
<hr/>
<jsp:include page="foot.jsp"></jsp:include>

</body>

</html>

