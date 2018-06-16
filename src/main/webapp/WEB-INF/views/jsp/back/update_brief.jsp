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
        <h2 style="margin-top:0;text-align: center;">修改我们的简介界面</h2>
    </div>
    <div class="container-fluid">
        <div class="row cm-fix-height">
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <img src="/img/sass-less.png" alt="Less support" class="img-responsive">
                        <br>
                        <p>图片</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <img src="/img/devices.png" alt="Responsive across devices" class="img-responsive">
                        <br>
                        <p>文字发的啥发的啥</p>
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

<script>
    /**
     * 这个是联系我们对应的js
     */
    $(function(){
        load();
    });

    var contactId;

    /**
     * 加载时执行的函数
     */
    function load(){
        $.ajax({
            type:'GET',
            dataType: 'json',
            url: '/admin/parts/1/pages', // 数字1表示的是partId,
            success: function(res){
                console.log(res)
                if(res.status == 200){
                    contactId = res.data.id;
                    document.getElementById("cname").value = res.data.cname;
                    document.getElementById("ename").value = res.data.ename;
                    document.getElementById("telphone").value = res.data.telphone;
                    document.getElementById("email").value = res.data.email;
                    document.getElementById("website").value = res.data.website;
                    document.getElementById("location").value = res.data.location;
                } else{
                    console.log("操作失败")
                }
            },
            error: function(xhr, type) {
                console.log("错误信息："+xhr.valueOf(), type)
            }
        });
    }

    function clickUpdate(){
        $('#cname').attr("disabled",false);
        $('#ename').attr("disabled",false);
        $('#email').attr("disabled",false);
        $('#telphone').attr("disabled",false);
        $('#website').attr("disabled",false);
        $('#location').attr("disabled",false);
    }

    function clickSave(){
        console.log("点击了保存");
        var contact = {
            id: contactId,
            cname: '',
            ename: '',
            telphone: '',
            email: '',
            website: '',
            location: ''
        }

        contact.cname = $('#cname').val();
        contact.ename = $('#ename').val();
        contact.telphone = $('#telphone').val();
        contact.email = $('#email').val();
        contact.website = $('#website').val();
        contact.location = $('#location').val();

        console.log(contact);

        contact = JSON.stringify(contact);

        $.ajax({
            type: 'POST',
            url: '/api/updateContact',
            contentType: 'application/json;charset=utf-8',
            data: contact,
            success: function(res) {
                console.log(res);
                document.getElementById("cname").value = res.data.cname;
                document.getElementById("ename").value = res.data.ename;
                document.getElementById("telphone").value = res.data.telphone;
                document.getElementById("email").value = res.data.email;
                document.getElementById("website").value = res.data.website;
                document.getElementById("location").value = res.data.location;


            },
            error: function(xhr, type) {
                console.log("错误信息："+xhr.valueOf(), type);
            }
        });


        $('#cname').attr("disabled",true);
        $('#ename').attr("disabled",true);
        $('#email').attr("disabled",true);
        $('#telphone').attr("disabled",true);
        $('#website').attr("disabled",true);
        $('#location').attr("disabled",true);
    }

</script>

</body>
</html>

