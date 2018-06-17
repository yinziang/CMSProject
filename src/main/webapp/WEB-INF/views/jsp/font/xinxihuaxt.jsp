<%--
  Created by IntelliJ IDEA.
  User: huaxin
  Date: 2018/6/17
  Time: 11:45
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
            <div><img src="images/jiejuefangan-pic1.png"></div>
        </div>

        <!-- 我们的简介 -->
        <div style="margin-top: 20px;">
            <h3>
                <center id="title"><hr style="margin-top: 30px">INFO 信息化系统</center>
            </h3>
            <div id="system-content" class="col-lg-12 col-md-12 col-sm-12 zixun">
                <h1 style="font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: left; margin: 0px 0px 10px;">
                    <span style="font-size: 24px;">系统简介&nbsp;</span> &nbsp;&nbsp;
                </h1>
                <p style="font-size: 18px;">
                    &nbsp; &nbsp; 我们拥有一套完善的透析信息化管理系统，涉及到的内容包含了透析的过程中的每个小的过程域，用细致的服务管理来给用户提供一个有保证的透析服务。<br/>
                </p>
                <p style="font-size: 18px;">
                    &nbsp; &nbsp; 系统中有六大管理内容：检查管理、偷透析管理、费用管理、数据管理、系统管理和患者管理，通过这些数据来对患者的实时信息进行监控和管理，从而给患者提供舒适安心的资料体验，这样也更能有利于患者的恢复。
                </p>
                <p style="font-size: 18px;">
                    &nbsp; &nbsp; &nbsp;除了上述的溜达系统的管理功能之外，我们还有一些辅助管理功能，比如有透析医嘱、透析记录、透析日程表、透析准备、透析月报等，让患者更详细清楚的了解到自己的治疗情况。另外还有确认处理结果、药剂透析汇总、透析记录自动获取、透析状态远程监控、医生护士值班表、信息上报以及耗材管理等，这样来协助各项工作的顺利开展。
                </p>
                <p style="font-size: 18px;">
                    <br/>
                </p>
                <h1 style="font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: left; margin: 0px 0px 10px;">
                    <span style="font-size: 24px;">系统亮点</span><br/>
                </h1>
                <p>
                    <span style="font-size: 20px;">&nbsp; &nbsp; <span style="font-size: 18px;">我们的血透信息化管理系统除了具有上述的完善的各项功能之外，还具有一下的一些亮点。</span></span><br/>
                </p>
                <p>
                    <span style="font-size: 20px;"><span style="font-size: 18px;">&nbsp; &nbsp; &nbsp;1、无纸化：整个治疗过程基本上做到了无纸化的操作</span></span>
                </p>
                <p>
                    <span style="font-size: 20px;"><span style="font-size: 18px;">&nbsp; &nbsp; &nbsp;2、精准化：各项库存管理提供精准的数据</span></span>
                </p>
                <p>
                    <span style="font-size: 20px;"><span style="font-size: 18px;">&nbsp; &nbsp; &nbsp;3、实时化：在整个系统的监控过程中都保证数据的实时性</span></span>
                </p>
                <p>
                    <span style="font-size: 20px;"><span style="font-size: 18px;">&nbsp; &nbsp; &nbsp;4、自动化：在很多数据的采集过程中都是自动进行，无需人工参与</span></span>
                </p>
                <p>
                    <span style="font-size: 20px;"><span style="font-size: 18px;">&nbsp; &nbsp; &nbsp;5、弹性化：根据具体的病房使用情况来进行具体的安排，具有很强的弹性空间</span></span>
                </p>
                <p>
                    <span style="font-size: 20px;"><span style="font-size: 18px;">&nbsp; &nbsp; &nbsp;6、云端化：信息上传到云端，更便于即时掌握和管控</span></span>
                </p>
                <p>
                    <span style="font-size: 20px;"><span style="font-size: 18px;">&nbsp; &nbsp;如下图所示：</span></span>
                </p>
                <p>
                    <span style="font-size: 20px;"><span style="font-size: 18px;"><img src="images/xinxihuaxt-pic1.png" title="" alt="demo.jpg"/></span></span>
                </p>
            </div>
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
            url: 'http://localhost:8080/admin/parts/8/pages',
            success: function(res){
                console.log(res)
                if(res.status == 200){
                    document.getElementById("title").innerHTML = res.data[0].title;
                    document.getElementById("system-content").innerHTML = res.data[0].content;
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

