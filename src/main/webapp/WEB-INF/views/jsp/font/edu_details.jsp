<%--
  Created by IntelliJ IDEA.
  User: huaxin
  Date: 2018/6/17
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        <!-- 健康宣教详情 -->
        <div style="margin-top: 20px;">
            <div class="col-lg-12 col-md-12 col-sm-12 zixun" >
                <h3>
                    <center>HEALTH 健康宣教<hr style="margin-top: 30px"></center>
                </h3>
                <h4 align="center">
                    <span>${eduDetails.title}</span>
                </h4>
                <p style="text-align: center;">
                    <span class="date">日期：${eduDetails.updateAt}</span>
                </p>
                <div style="width: 100%;">
                    <div>
                        <div style="padding: 0px; margin: 0px;" class="firstRow">
                            ${eduDetails.content}
                        </div>
                    </div>
                </div>

                <p class="typename" style="padding: 3px 0px; margin-top: 20px; margin-bottom: 20px; line-height: 24px;">
                    <strong>所属类别：</strong>&nbsp;健康宣教
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

