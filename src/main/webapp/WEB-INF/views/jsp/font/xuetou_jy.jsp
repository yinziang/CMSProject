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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!--slider-->
    <link href="css/camera.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/foot.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/info.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/tools.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/newscard.css" rel="stylesheet" type="text/css" media="all"/>
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
            <div><img src="images/jianjie-pic1.jpg"></div>
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
<!--js 脚本-->
<script src="http://code.jquery.com/jquery-1.9.0rc1.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.0.0rc1.js"></script>
<script type='text/javascript' src='js/jquery.mobile.customized.min.js'></script>
<script type='text/javascript' src='js/jquery.easing.1.3.js'></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
<script type='text/javascript' src='js/tool.js'></script>
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

