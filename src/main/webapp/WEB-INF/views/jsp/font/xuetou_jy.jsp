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
                <center id="title"><hr style="margin-top: 30px">嘉鱼肾畅血透中心</center>
            </h3>
            <!--<div class="content-page">-->
            <div class="col-lg-12 col-md-12 col-sm-12 zixun">
                <div class="col-lg-8 col-md-8 col-sm-8" style="margin-top: 20px;margin-bottom: 20px"><img id="brief-img1"
                                                                                                          src="images/xt-jy-pic1.png"></div>
                <div id="brief-txt-1" class="col-lg-4 col-md-4 col-sm-4" style="margin-top: 20px;padding-top: 20px">
                    <p class="para" style="font-size: 15px">
                        &nbsp;&nbsp;&nbsp;&nbsp;嘉鱼县康泰医院始建于2004年10月，是咸宁市第一所民营非营利性综合性二级医院。医院占地面积6000平方米，建筑面积15000平方米，是职工
                        医保、居民医保、合作医疗、民政优抚、特殊慢性病、人寿保险、工伤保险等定点医疗机构。</p>
                    <p class="para" style="font-size: 15px">&nbsp;&nbsp;&nbsp;&nbsp;医院现在开放床位200张；设有临床、医技、行政、后勤科室38个；现有员工250人，专业技术人员190人（其中
                        具有高中、中级专业技术人员100余人）；年门诊急诊量达到10万余人次，年出院量达到8000余人次，年手术量达到2000余台次。</p>

                </div>
            </div>

            <div class="col-lg-12 col-md-12 col-sm-12 zixun">

                <div id="brief-txt-2" class="col-lg-4 col-md-4 col-sm-4" style="margin-top: 20px;padding-top: 20px">
                    <p class="para" style="font-size: 15px">
                        &nbsp;&nbsp;&nbsp;&nbsp;十年来，医院始终坚持"以病人为中心"的服务理念，不断提高服务质量、加强医疗安全，努力提高患者满意度，构建和谐医患关系。</p>
                    <p class="para" style="font-size: 15px">&nbsp;&nbsp;&nbsp;&nbsp;医院相继获得"咸宁市民营医院'三好一满意'活动先进单位"、"价格诚信示范单位"、"白内障复明工程协助单位"、
                        "咸宁市巾帼文明示范岗"、"咸宁市医疗质量荆楚行先进单位"等荣誉称号。</p>
                    <p class="para" style="font-size: 15px">&nbsp;&nbsp;&nbsp;&nbsp;2011年10月又被中国医院协会民营医院管理分会、卫生部医院管理研究所授予"全国诚信民营医院"荣誉称号。
                        2012年顺利通过市医院等级评审委员会验收，于2013年被授予二级乙等综合医院称号。</p>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-8" style="margin-top: 20px;margin-bottom: 20px">
                    <img id="brief-img2" src="images/xt-jy-pic2.png">
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
            url: 'http://localhost:8080/admin/parts/9/pages',
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

