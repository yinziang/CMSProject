<%--
  Created by IntelliJ IDEA.
  User: huaxin
  Date: 2018/6/17
  Time: 11:42
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
            <div><img src="/images/font/jiejuefangan-pic1.png"></div>
        </div>

        <!-- 人员培训 -->
        <div style="margin-top: 20px;">
            <h3>
                <center id="title"><hr style="margin-top: 30px">TRAINING 人员培训</center>
            </h3>
            <div id="train-content" class="col-lg-12 col-md-12 col-sm-12 zixun">
                <p style="font-size:18px;text-align: center">
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
            url: 'http://localhost:8080/admin/parts/7/pages',
            success: function(res){
                console.log(res)
                if(res.status == 200){
                    document.getElementById("title").innerHTML = res.data[0].title;
                    document.getElementById("train-content").innerHTML = res.data[0].content;
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

