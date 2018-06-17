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
    <jsp:include page="base.jsp"></jsp:include>
</head>

<body>
<div class="wrapper">
    <div class="wrap">
        <div class="wrap_inner">
           <jsp:include page="header.jsp"></jsp:include>
            <div><img src="/images/font/jiejuefangan-pic1.png"></div>
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

