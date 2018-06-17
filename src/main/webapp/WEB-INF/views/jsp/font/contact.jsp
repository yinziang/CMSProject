<%--
  Created by IntelliJ IDEA.
  User: huaxin
  Date: 2018/6/17
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        </div>

        <!--start content-->
        <div class="main col-lg-12 col-md-12 col-sm-12">

            <div class="col-lg-5 col-md-5 col-sm-5" style="margin-top: 50px;margin-bottom: 50px">
                <p id="company_cname" style="padding-left: 40px;font-size: 20px">湖北康泰化成医疗管理有限公司</p>
                <p id="company_ename" style="padding-left: 40px;font-size: 20px">Hubei Kangtai Hua Cheng Medical Management Co.,Ltd.</p>
                <p id="company_telphone" style="padding-left: 40px;font-size: 20px">027-87366568</p>
                <p id="company_email" style="padding-left: 40px;font-size: 20px">邮箱：593970826@qq.com</p>
                <p id="company_website" style="padding-left: 40px;font-size: 20px">网址：http://www.kthcyl.com</p>
                <p id="company_location" style="padding-left: 40px;font-size: 20px">地址：武汉市武昌区汉街总部国际F座704-706室</p>
            </div>
            <div class="col-lg-7 col-md-7 col-sm-7">
                <jsp:include page="map.jsp"></jsp:include>
            </div>
        </div>
        <!--end content-->

       <jsp:include page="tool-page.jsp"></jsp:include>
    </div>
</div>

<div class="clear"></div>
<hr/>
<jsp:include page="foot.jsp"></jsp:include>

<script type="text/javascript" src="/js/font/contact.js"></script>

</body>

</html>



















