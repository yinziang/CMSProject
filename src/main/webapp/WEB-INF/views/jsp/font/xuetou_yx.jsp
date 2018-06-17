<%--
  Created by IntelliJ IDEA.
  User: huaxin
  Date: 2018/6/17
  Time: 11:47
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
            <div><img src="/images/font/jianjie-pic1.jpg"></div>
        </div>

        <!-- 我们的简介 -->
        <div style="margin-top: 20px;">
            <h3>
                <center id="title"><hr style="margin-top: 30px">阳新肾畅血透中心（在建）</center>
            </h3>
            <div class="col-lg-12 col-md-12 col-sm-12 zixun">
                <p>
                    &nbsp; &nbsp;&nbsp;&nbsp;<span style="font-size:16px;"> 在建的阳新康泰医院是一家集医疗、科研、教育、康复为一体的现代化综合性医院，建筑面积30000万平方米，计划开放床位300张，总投资3亿元人民币。医院建成之后，将成为该市规模最大的综合性民营医院。</span>
                </p>
                <p style="font-size:16px;">
                    &nbsp; &nbsp;&nbsp;&nbsp;(内容有待补充。)<br />
                </p>
            </div>

        </div>

        <jsp:include page="tool-page.jsp"></jsp:include>
    </div>
</div>

<div class="clear"></div>
<hr/>
<jsp:include page="foot.jsp"></jsp:include>

<script>
    $(function(){
        load();
    });

    /**
     * 加载时执行的函数
     */
    function load(){
        $.ajax({
            type:'GET',
            dataType: 'json',
            url: 'http://localhost:8080/admin/parts/11/pages',
            success: function(res){
                console.log(res)
                if(res.status == 200){
                    console.log("操作成功")
                    document.getElementById("title").src = res.data[0].title;
//                    document.getElementById("brief-img1").src = res.data[0].imageUrl;
//                    document.getElementById("brief-img2").src = res.data[1].imageUrl;
                    document.getElementById("brief-txt-1").innerHTML = res.data[0].content;
//                    document.getElementById("brief-txt-2").innerHTML = res.data[1].content;
                } else{
                    alert("操作失败")
                }
            },
            error: function(xhr, type) {
                console.log("错误信息："+xhr.valueOf(), type)
            }
        });
    }
</script>
</body>

</html>

