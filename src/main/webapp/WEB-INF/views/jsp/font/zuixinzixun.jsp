<%--
  Created by IntelliJ IDEA.
  User: huaxin
  Date: 2018/6/17
  Time: 11:53
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
                <center><hr style="margin-top: 50px">NEWS 最新资讯</center>
            </h3>
            <div class="col-lg-12 col-md-12 col-sm-12 news-card zixun">
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <a href="zuixinzx_n1.html"><img src="images/zuixinzx/zuixinzx-pic1.jpg"></a>
                </div>
                <div class="col-lg-9 col-md-9 col-sm-9">
                    <p><a href="zuixinzx_n1.html">CSN2017 | 肾脏病学分会学术年会于武汉圆满闭幕</a></p>
                    <p>编辑时间：2018-06-10 22:22:22</p>
                    <p>由中华医学会、中华医学会肾脏病学分会主办，湖北省医学会承办的中华医学会肾脏病学分会2017年学术年会在历经4天的学术交流后，
                        于9月16日在武汉洲际酒店国际会议中心圆满闭幕。</p>
                </div>
            </div>
            <hr class="hr-line">
            <div class="col-lg-12 col-md-12 col-sm-12 news-card">
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <a href="zuixinzx_n2.html"><img src="images/zuixinzx/zuixinzx-pic2.jpg"></a>
                </div>
                <div class="col-lg-9 col-md-9 col-sm-9">
                    <p><a href="zuixinzx_n2.html">肾友会活动——两岸携手，共抗肾病（延吉泌尿肾病医院）</a></p>
                    <p>编辑时间：2018-06-10 22:22:22</p>
                    <p>近日，延边州首家社会办医血液透析中心——延吉泌尿肾病医院正式投入使用，该项目总投资1.5亿元，
                        是延边州规模最大的非公医疗机构。杏泰医疗有幸参与其中，与香港远东国际医疗投资集团合作，
                        力求为延边的患者提供更好的医疗服务</p>
                </div>

            </div>
            <hr class="hr-line">
            <div class="col-lg-12 col-md-12 col-sm-12 news-card">
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <a href="zuixinzx_n3.html"><img src="images/zuixinzx/zuixinzx-pic3.jpg"></a>
                </div>
                <div class="col-lg-9 col-md-9 col-sm-9">
                    <p><a href="zuixinzx_n3.html">2016省中“仁和”心脑肾高峰对话论坛</a></p>
                    <p>编辑时间：2016-06-10 22:22:22</p>
                    <p>浙江省中医院于近日以“溯源·聚慧·共进”为主题，举办了“2016省中·仁和整合医学论坛”，
                        肾畅医疗有幸参与其中，并邀请台大医院新竹分院院长洪冠予教授出席了分论坛——心脑肾高峰对话论坛。</p>
                </div>
            </div>
            <hr class="hr-line">
            <div class="col-lg-12 col-md-12 col-sm-12 news-card">
                <div class="col-lg-3 col-md-3 col-sm-3">
                    <a href="zuixinzx_n4.html"><img src="images/zuixinzx/zuixinzx-pic4.jpg"></a>
                </div>
                <div class="col-lg-9 col-md-9 col-sm-9">
                    <p><a href="zuixinzx_n4.html">新婚肾友透析游，贴心医护常相伴</a></p>
                    <p>编辑时间：2018-06-10 22:22:22</p>
                    <p>很多人认为肾衰竭患者一旦进入透析就会失去和健康人一样的生活，由于他们的肾脏的衰竭，
                        体内的毒素和水分必须通过规律的血液透析才能排出体外。而出门旅游，这件对常人来说微不足道的事，
                        却由于透析需求的限制，使很多肾友渴望而不可及。殊不知这些患者经过充分的透析治疗依旧可以正常
                        生活、正常工作。经过周密细致的安排和...</p>
                </div>
            </div>
            <hr class="hr-line">
        </div>

        <jsp:include page="tool-page.jsp"></jsp:include>
    </div>
</div>

<div class="clear"></div>
<hr/>
<jsp:include page="foot.jsp"></jsp:include>

</body>

</html>

