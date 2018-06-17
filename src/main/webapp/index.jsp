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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link href="/css/font/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!--slider-->
    <link href="/css/font/camera.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/css/font/foot.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/css/font/info.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/css/font/tools.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/css/font/newscard.css" rel="stylesheet" type="text/css" media="all"/>

    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
          integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


</head>

<body>
<div class="wrapper">
    <div class="wrap">
        <div class="wrap_inner">
            <div class="cssmenu">
                <nav class="navbar navbar-default">
                    <div class="container-fluid">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>

                            <a class="navbar-brand" href="index.html">
                                <img alt="Brand" style="max-width:100px;margin-top:-7px;" src="images/logo.png">
                            </a>
                        </div>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse cssnav" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav ">
                                <li class="active">
                                    <a href="index.html">首页 <span class="sr-only">(current)</span></a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                       aria-haspopup="true"
                                       aria-expanded="false">关于肾畅 <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="shengchangjianjie.html">肾畅简介</a>
                                        </li>
                                        <li>
                                            <a href="shengchangshili.html">肾畅实力</a>
                                        </li>
                                        <li>
                                            <a href="shengchangwenhua.html">肾畅文化</a>
                                        </li>
                                        <!--<li role="separator" class="divider"></li>-->
                                        <li>
                                            <a href="shehuizeren.html">社会责任</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                       aria-haspopup="true"
                                       aria-expanded="false">解决方案 <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="shejigh.html">设计规划</a>
                                        </li>
                                        <li>
                                            <a href="shichangyx.html">市场营销</a>
                                        </li>
                                        <li>
                                            <a href="renyuanpx.html">人员培训</a>
                                        </li>
                                        <li>
                                            <a href="xinxihuaxt.html">信息化系统</a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                       aria-haspopup="true"
                                       aria-expanded="false">血透中心 <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li>
                                            <a href="xuetou_jy.html">嘉鱼康泰血透中心</a>
                                        </li>
                                        <li>
                                            <a href="xuetou_ts.html">通山康泰血透中心</a>
                                        </li>
                                        <li>
                                            <a href="xuetou_yx.html">阳新肾畅血透中心</a>
                                        </li>
                                        <li>
                                            <a href="xuetou_cr.html">崇仁肾畅血透中心</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="zuixinzixun.html"><span>最新资讯</span></a>
                                </li>
                                <li>
                                    <a href="jiankangxuanjiao.html"><span>健康宣教</span></a>
                                </li>
                                <li>
                                    <a href="shenyouhui.html"><span>肾友会</span></a>
                                </li>
                                <li class="last">
                                    <a href="contact.html"><span>联系我们</span></a>
                                </li>
                            </ul>
                        </div>
                        <!-- /.navbar-collapse -->
                    </div>
                    <!-- /.container-fluid -->
                </nav>
            </div>
            <!-- #camera_wrap_1 -->
            <div class="fluid_container">
                <div class="camera_wrap camera_azure_skin" id="camera_wrap_1">
                    <div data-thumb="images/thumbs/slide1.png" data-src="images/slider/slide1.png">
                    </div>
                    <div data-thumb="images/thumbs/slide2.png" data-src="images/slider/slide2.png">
                    </div>
                    <div data-thumb="images/thumbs/slide3.png" data-src="images/slider/slide3.png">
                    </div>
                    <!--<div data-thumb="images/thumbs/slider1.jpg" data-src="images/slider/slider4.jpg">-->
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
            <a href="shejigh.html"><img src="images/jiejuefangan.png"/></a>
        </div>

        <!-- 我们的简介 -->
        <div style="margin-top: 20px;" class="col-lg-12 col-md-12 col-sm-12" style="margin: 30px">
            <h3>
                <center>我们的简介</center>
            </h3>
            <div class="col-lg-9 col-md-8 col-sm-4" style="margin-top: 20px;margin-bottom: 20px">
                <a href="shengchangjianjie.html"><img src="images/jianjie.png"></a></div>
            <div class="col-lg-3 col-md-4 col-sm-4" style="margin-top: 20px">
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
                <p><a href="WEB-INF/views/jsp/font/zuixinzx_n1.html"><img src="images/zuixinzx/zuixinzx-pic1.jpg"></a></p>
                <p><a href="WEB-INF/views/jsp/font/zuixinzx_n1.html">CSN2017 | 肾脏病学分会学术年会于武汉圆满闭幕</a></p>
                <p>由中华医学会、中华医学会肾脏病学分会主办，湖北省医学会承办的中华医学会肾脏病学分会2017年学术年会在历经4天的学术交流后， 于9月16日在武汉洲际酒店国际会议中心圆满闭幕。</p>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4" style="margin-top: 20px;margin-bottom: 20px">
                <p><a href="WEB-INF/views/jsp/font/zuixinzx_n2.html"><img src="images/zuixinzx/zuixinzx-pic2.jpg"></a></p>
                <p><a href="WEB-INF/views/jsp/font/zuixinzx_n2.html">肾友会活动——两岸携手，共抗肾病（延吉泌尿肾病医院）</a></p>
                <p>近日，延边州首家社会办医血液透析中心——延吉泌尿肾病医院正式投入使用，该项目总投资1.5亿元， 是延边州规模最大的非公医疗机构。杏泰医疗有幸参与其中，与香港远东国际医疗投资集团合作，
                    力求为延边的患者提供更好的医疗服务</p>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-4" style="margin-top: 20px;margin-bottom: 20px">
                <p><a href="WEB-INF/views/jsp/font/zuixinzx_n3.html"><img src="images/zuixinzx/zuixinzx-pic3.jpg"></a></p>
                <p><a href="WEB-INF/views/jsp/font/zuixinzx_n3.html">2016省中“仁和”心脑肾高峰对话论坛</a></p>
                <p>浙江省中医院于近日以“溯源·聚慧·共进”为主题，举办了“2016省中·仁和整合医学论坛”， 肾畅医疗有幸参与其中，并邀请台大医院新竹分院院长洪冠予教授出席了分论坛——心脑肾高峰对话论坛。</p>
            </div>

        </div>
        <p style="font-size: 18px;margin-left: 20px"><a href="zuixinzixun.html">更多资讯>></a></p>
        <!-- end#最新资讯 -->

        <!-- 工具栏 -->
        <div class="tools col-lg-12 col-md-12 col-sm-12">
            <div class="col-lg-1 col-md-1 col-sm-1">
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2">
                <div class="row">
                    <p class="tools-title">关于我们</p>
                    <hr>
                </div>
                <div class="row">
                    <p class="tools-content"><a href="shengchangjianjie.html">走进肾畅</a></p>
                </div>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2">
                <div class="row">
                    <p class="tools-title">健康宣教</p>
                    <hr>
                </div>
                <div class="row">
                    <p class="tools-content"><a href="jiankangxuanjiao.html">健康宣教</a></p>
                </div>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2">
                <div class="row">
                    <p class="tools-title">最新资讯</p>
                    <hr>
                </div>
                <div class="row">
                    <p class="tools-content"><a href="zuixinzixun.html">肾畅资讯</a></p>
                </div>
                <div class="row">
                    <p class="tools-content"><a href="zuixinzixun.html">行业新闻</a></p>
                </div>
                <div class="row">
                    <p class="tools-content"><a href="zuixinzixun.html">最新活动</a></p>
                </div>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2">
                <div class="row">
                    <p class="tools-title">联系我们</p>
                    <hr>
                </div>
                <div class="row">
                    <p class="tools-content"><a href="contact.html">联系我们</a></p>
                </div>
                <div class="row">
                    <p class="tools-content"><a href="contact.html">人力资源</a></p>
                </div>
                <div class="row">
                    <p class="tools-content"><a href="#">在线留言</a></p>
                </div>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2">
                <p><img alt="" src="images/qrcode.jpg"/></p>
                <p style="color: black;text-align: center">扫一扫关注我们</p>
            </div>
            <div class="col-lg-1 col-md-1 col-sm-1">
            </div>
        </div>
    </div>
</div>

<div class="clear"></div>
<hr/>
<footer class="footer" id="footer">
    <div class="container">
        <div id="copyright">Designed by 华鑫 in 华中科技大学&nbsp;&nbsp;&nbsp;&nbsp;</div>
    </div>
</footer>

<script src="http://code.jquery.com/jquery-1.9.0rc1.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.0.0rc1.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
<script type='text/javascript' src='/js/font/jquery.mobile.customized.min.js'></script>
<script type='text/javascript' src='/js/font/jquery.easing.1.3.js'></script>
<script type='text/javascript' src='/js/font/camera.min.js'></script>
<script type='text/javascript' src='/js/font/tool.js'></script>

<script>
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

