<%--
  Created by IntelliJ IDEA.
  User: huaxin
  Date: 2018/6/17
  Time: 11:44
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
                <center id="title"><hr style="margin-top: 30px">ABOUT US 关于我们</center>
            </h3>
            <!--<div class="content-page">-->
            <div class="col-lg-12 col-md-12 col-sm-12 zixun">
                <div class="col-lg-8 col-md-8 col-sm-8" style="margin-top: 20px;margin-bottom: 20px">
                    <img id="brief-img1" src="images/jianjie.png"></div>
                <div id="brief-txt-1" class="col-lg-4 col-md-4 col-sm-4" style="margin-top: 20px">
                    <p class="para" style="font-size: 15px">
                        &nbsp;&nbsp;&nbsp;&nbsp;湖北肾畅泰康医疗科技有限公司，是一家专注于血液透析领域投资、运营和管理的公司.</p>
                    <p class="para" style="font-size: 15px">&nbsp;&nbsp;&nbsp;&nbsp;我们依托于湖北康泰化成医疗管理有限公司，凭借着集团公司医疗管理的丰富经验，配合国内顶尖的高素质专业人才
                        ，将完善的血液透析医疗服务提供给肾病患者，将血液透析整体解决方案提供给各大医疗机构。</p>
                    <p class="para" style="font-size: 15px">&nbsp;&nbsp;&nbsp;&nbsp;我们是独立血透中心的投资者和经营者，我们是血透整体解决方案的提供者，我们是肾畅医疗。</p>
                </div>
            </div>

            <div class="col-lg-12 col-md-12 col-sm-12 zixun">

                <div id="brief-txt-2" class="col-lg-4 col-md-4 col-sm-4" style="margin-top: 20px">
                    <p class="para" style="font-size: 15px">
                        &nbsp;&nbsp;&nbsp;&nbsp;我们为患者和医疗机构提供最专业最优质的服务，是肾畅医疗存在的价值，而服务体系的专业与完善，更是我们时刻谨记在心的责任。</p>
                    <p class="para" style="font-size: 15px">&nbsp;&nbsp;&nbsp;&nbsp;我们是一群有着专业技能的团队，我们的队伍中有着资深的技术能力带头人，更重要的是我们
                        还是一群有着梦想的群体，正是因为有了梦想，我们用更多的行动去证明自己。</p>
                    <p class="para" style="font-size: 15px">&nbsp;&nbsp;&nbsp;&nbsp;我们的使命是，通过优化血透中心临床工作流程，建立标准的作业程序，提高服务质量，增加服务成本的有效性
                        ，并且不断提高透析者的透析质量和生活品质。</p>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-8" style="margin-top: 20px;margin-bottom: 20px">
                    <img id="brief-img2" src="images/jianjie-pic2.png">
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
            url: 'http://localhost:8080/admin/parts/1/pages',
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

