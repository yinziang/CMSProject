<%--
  Created by IntelliJ IDEA.
  User: huaxin
  Date: 2018/6/17
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>

<head>
    <title>Home</title>
    <jsp:include page="WEB-INF/views/jsp/font/base.jsp"></jsp:include>

</head>

<body>
<div class="wrapper">
    <div class="wrap">
        <div class="wrap_inner">
            <jsp:include page="WEB-INF/views/jsp/font/header.jsp"></jsp:include>

            <!-- #camera_wrap_1 -->
            <div class="fluid_container">
                <div class="camera_wrap camera_azure_skin" id="camera_wrap_1">
                    <div id="slide1" data-thumb="/images/font/thumbs/slide1.png" data-src="/images/font/slider/slide1.png"></div>
                    <div id="slide2" data-thumb="/images/font/thumbs/slide2.png" data-src="/images/font/slider/slide2.png"></div>
                    <div id="slide3" data-thumb="/images/font/thumbs/slide3.png" data-src="/images/font/slider/slide3.png"></div>
                </div>
            </div>
            <!-- #camera_wrap_1 -->
            <div class="clear"></div>
        </div>

        <!-- 我们的解决方案 -->
        <div style="margin-top: 40px;">
            <h3>
                <center>我们的方案</center>
            </h3>
            <a href="/font/toDesign"><img id="solution" src="images/page/solution.png"/></a>
        </div>

        <!-- 我们的简介 -->
        <div style="margin-top: 20px;" class="col-lg-12 col-md-12 col-sm-12" style="margin: 30px">
            <h3>
                <center>我们的简介</center>
            </h3>
            <div class="col-lg-8 col-md-8 col-sm-8" style="margin-top: 20px;margin-bottom: 20px">
                <a href="/font/toBrief"><img id="aboutUs-img" src="images/page/about_us.jpg"></a></div>
            <div id="aboutUs-content" class="col-lg-4 col-md-4 col-sm-4" style="margin-top: 20px">
                <p class="para" style="font-size: 15px">
                    &nbsp;&nbsp;&nbsp;&nbsp;湖北肾畅泰康医疗科技有限公司，是一家专注于血液透析领域投资、运营和管理的公司.</p>
                <p class="para" style="font-size: 15px">&nbsp;&nbsp;&nbsp;&nbsp;我们依托于湖北康泰化成医疗管理有限公司，凭借着集团公司医疗管理的丰富经验，配合国内顶尖的高素质专业人才
                    ，将完善的血液透析医疗服务提供给肾病患者，将血液透析整体解决方案提供给各大医疗机构。</p>
                <p class="para" style="font-size: 15px">&nbsp;&nbsp;&nbsp;&nbsp;我们是独立血透中心的投资者和经营者，我们是血透整体解决方案的提供者，我们是肾畅医疗。</p>
            </div>
        </div>

        <!-- 最新资讯 -->
        <div style="margin-top: 20px;" class="col-lg-12 col-md-12 col-sm-12 news-card" style="margin: 30px">
            <h3>
                <center>最新资讯</center>
            </h3>
            <div class="col-lg-4 col-md-4 col-sm-4" style="margin-top: 20px;margin-bottom: 20px">
                <p><a id="zx1-1" href="WEB-INF/views/jsp/font/zuixinzx_n1.html">
                    <img id="zx1-2" src="/images/font/zuixinzx/zuixinzx-pic1.jpg"></a></p>
                <p><a id="zx1-3" href="WEB-INF/views/jsp/font/zuixinzx_n1.html">CSN2017 | 肾脏病学分会学术年会于武汉圆满闭幕</a></p>
                <p id="zx1-4">由中华医学会、中华医学会肾脏病学分会主办，湖北省医学会承办的中华医学会肾脏病学分会2017年学术年会在历经4天的学术交流后， 于9月16日在武汉洲际酒店国际会议中心圆满闭幕。</p>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4" style="margin-top: 20px;margin-bottom: 20px">
                <p><a id="zx2-1" href="WEB-INF/views/jsp/font/zuixinzx_n2.html">
                    <img id="zx2-2" src="/images/font/zuixinzx/zuixinzx-pic2.jpg"></a></p>
                <p><a id="zx2-3" href="WEB-INF/views/jsp/font/zuixinzx_n2.html">肾友会活动——两岸携手，共抗肾病（延吉泌尿肾病医院）</a></p>
                <p id="zx2-4">近日，延边州首家社会办医血液透析中心——延吉泌尿肾病医院正式投入使用，该项目总投资1.5亿元， 是延边州规模最大的非公医疗机构。杏泰医疗有幸参与其中，与香港远东国际医疗投资集团合作，
                    力求为延边的患者提供更好的医疗服务</p>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4" style="margin-top: 20px;margin-bottom: 20px">
                <p><a id="zx3-1" href="WEB-INF/views/jsp/font/zuixinzx_n3.html">
                    <img id="zx3-2" src="/images/font/zuixinzx/zuixinzx-pic3.jpg"></a></p>
                <p><a id="zx3-3" href="WEB-INF/views/jsp/font/zuixinzx_n3.html">2016省中“仁和”心脑肾高峰对话论坛</a></p>
                <p id="zx3-4">浙江省中医院于近日以“溯源·聚慧·共进”为主题，举办了“2016省中·仁和整合医学论坛”， 肾畅医疗有幸参与其中，并邀请台大医院新竹分院院长洪冠予教授出席了分论坛——心脑肾高峰对话论坛。</p>
            </div>

        </div>
        <p style="font-size: 18px;margin-left: 20px"><a href="/font/toNewsList">更多资讯>></a></p>
        <!-- end#最新资讯 -->

        <jsp:include page="WEB-INF/views/jsp/font/tool-page.jsp"></jsp:include>
    </div>
</div>

<div class="clear"></div>
<hr/>
<jsp:include page="WEB-INF/views/jsp/font/foot.jsp"></jsp:include>

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
            url: 'http://localhost:8080/index',
            success: function(res){
                console.log(res)
                if(res.status == 200){
                    console.log("操作成功")
                    document.getElementById("aboutUs-content").innerHTML = res.data.aboutUs.Content;

                    document.getElementById("zx1-1").href = "/font/newsDetails/"+res.data.newsList[0].id;
                    document.getElementById("zx2-1").href = "/font/newsDetails/"+res.data.newsList[1].id;
//                    document.getElementById("zx3-1").href = "/font/newsDetails/"+res.data.newsList[2].id;

                    document.getElementById("zx1-2").src = res.data.newsList[0].thumbnail;
                    document.getElementById("zx2-2").src = res.data.newsList[1].thumbnail;
//                    document.getElementById("zx3-2").src = res.data.newsList[2].thumbnail;

                    document.getElementById("zx1-3").href = "/font/newsDetails/"+res.data.newsList[0].id;
                    document.getElementById("zx2-3").href = "/font/newsDetails/"+res.data.newsList[1].id;
//                    document.getElementById("zx3-3").href = "/font/newsDetails/"+res.data.newsList[2].id;

                    document.getElementById("zx1-3").innerText = res.data.newsList[0].title;
                    document.getElementById("zx2-3").innerText = res.data.newsList[1].title;
//                    document.getElementById("zx3-3").innerText = res.data.newsList[2].title;

                    document.getElementById("zx1-4").innerText = res.data.newsList[0].desc;
                    document.getElementById("zx2-4").innerText = res.data.newsList[1].desc;
//                    document.getElementById("zx3-4").innerText = res.data.newsList[2].desc;

                } else{
                    alert("操作失败")
                }
            },
            error: function(xhr, type) {
                console.log("错误信息："+xhr.valueOf(), type)
            }
        });
    }

    jQuery(function () {

        jQuery('#camera_wrap_1').camera({
            thumbnails: true
        });

        jQuery('#camera_wrap_2').camera({
            height: '400px',
            loader: 'bar',
            pagination: true,
            thumbnails: true
        });
    });

</script>
</body>

</html>

