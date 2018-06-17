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
                <center id="title"><hr style="margin-top: 30px">通山康泰血透中心</center>
            </h3>
            <!--<div class="content-page">-->
            <div class="col-lg-12 col-md-12 col-sm-12 zixun">
                <div class="col-lg-9 col-md-9 col-sm-9" style="margin-top: 20px;margin-bottom: 20px"><img id="brief-img1"
                                                                                                          src="images/xt-ts-pic1.png"></div>
                <div id="brief-txt-1" class="col-lg-3 col-md-3 col-sm-3" style="margin-top: 20px">
                    <h3>通山县医养中心</h3>
                    <p class="para" style="font-size: 15px">
                        &nbsp;&nbsp;&nbsp;&nbsp;通山县医养中心（通山县城市福利院）是咸宁市首家融医疗与养老院为一体的公建民宿、医养结合的专业医养机构。全院占地面积58.77亩，规划建筑面积26000平方米，总投资1.2亿元。</p>
                </div>
            </div>

            <div class="col-lg-12 col-md-12 col-sm-12 zixun" >

                <div id="brief-txt-2" class="col-lg-3 col-md-3 col-sm-3" style="margin-top: 20px">
                    <h3>通山康泰医院</h3>
                    <p class="para" style="font-size: 15px">&nbsp;&nbsp;&nbsp;&nbsp;通山县康泰医院是一所集医疗、保健于一体的非营利性二级综合医院，建筑面积共计6500平方米。</p>
                    <p class="para" style="font-size: 15px">&nbsp;&nbsp;&nbsp;&nbsp;医院开设有心血管、内分泌、消化内科、外科、骨科、结石科、妇产科、儿科、眼耳鼻喉科、口腔科、康复科、血液透析中心、
                        中医科等临床科室以及检验、放射（含CT室）、彩超、心电图、胃镜室等医技科室。</p>
                    <p class="para" style="font-size: 15px">&nbsp;&nbsp;&nbsp;&nbsp;医院首期开房病床100张，现有员工145人，其中省市专家、教授团队16人，主治医师及其他临床专业人员93余人。为通山县城镇职工
                        医保、居民医保、农村合作医疗定点医院及同济医院、湖北省人民医院远程会诊定点医院。</p>
                </div>
                <div class="col-lg-9 col-md-9 col-sm-9" style="margin-top: 20px;margin-bottom: 20px">
                    <img id="brief-img2" src="images/xt-ts-pic2.png">
                </div>
            </div>

            <!--</div>-->
        </div>

        <jsp:include page="tool-page.jsp"></jsp:include>
    </div>
</div>

<div class="clear"></div>
<hr/>
<jsp:include page="foot.jsp"></jsp:include>
<!--js 脚本-->
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
            url: 'http://localhost:8080/admin/parts/10/pages',
            success: function(res){
                console.log(res)
                if(res.status == 200){
                    console.log("操作成功")
                    document.getElementById("title").src = res.data[0].title;
                    document.getElementById("brief-img1").src = res.data[0].imageUrl;
                    document.getElementById("brief-img2").src = res.data[1].imageUrl;
                    document.getElementById("brief-txt-1").innerHTML = res.data[0].content;
                    document.getElementById("brief-txt-2").innerHTML = res.data[1].content;
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

