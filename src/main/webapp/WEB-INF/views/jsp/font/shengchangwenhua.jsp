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

            <div><img src="/images/font/jianjie-pic1.jpg"></div>
        </div>

        <!-- 我们的简介 -->
        <div style="margin-top: 20px;">
            <h3>
                <center id="title"><hr style="margin-top: 30px">CULTURE 肾畅文化</center>
            </h3>
            <div>
                <div class="col-lg-12 col-md-12 col-sm-12 zixun">
                    <div class="col-lg-8 col-md-8 col-sm-8" style="margin-top: 20px;margin-bottom: 20px"><img id="brief-img1"
                                                                                                              src="images/wenhua-pic2.png"></div>
                    <div id="brief-txt-1" class="col-lg-3 col-md-4 col-sm-6" style="margin-top: 20px">
                        <p class="para" style="font-size: 15px">
                            &nbsp;&nbsp;&nbsp;&nbsp;我们是一个团结和睦的团队，团队中的也形成了具有一定特色的团队文化，也正是这样一群有着梦想的人，才让整个团队充满活力。</p>
                        <p class="para" style="font-size: 15px">&nbsp;&nbsp;&nbsp;&nbsp;作为一家企业，我们始终坚持我们企业的使命，无论是一小步还是一大步，都应该用踏实的步伐迈出，
                            都要带动人类社会的进步。我们的核心价值在于专业和标准，用更高的要求要求自己，才能用更好的技术服务用户，并且我们非常注重诚信和务实。</p>
                    </div>
                </div>

                <div class="col-lg-12 col-md-12 col-sm-12 zixun">

                    <div id="brief-txt-2" class="col-lg-4 col-md-4 col-sm-4" style="margin-top: 20px">
                        <p class="para" style="font-size: 15px">
                            &nbsp;&nbsp;&nbsp;&nbsp;我们在平时用心处理好跟病人的关系的同时，为了增强整个团队的凝聚力，也会经常性的举办一些活动来增进大家的感情。特别的是在有的专业知识的比赛中
                            ，既锻炼了大家的综合能力，也更能促进团队的进步。</p>
                        <p class="para" style="font-size: 15px">&nbsp;&nbsp;&nbsp;&nbsp;企业的强大来自于产品用户与合作伙伴的信任，体现的是企业经营的诚意和社会责任，
                            肾畅医疗秉承“以人为本”的理念，将心比心，凭借服务的热忱赢得社会的信赖和支持。我们抱着不停滞、不满足的心态不断学习改进、
                            不断提高自我，追求创新、追求进步、精益求精，为合作中心创造价值，也为患者创造福祉，重拾自在人生。</p>
                        <p class="para" style="font-size: 15px">&nbsp;&nbsp;&nbsp;&nbsp;诚信是我们的基本，专业是我们的必备，务实是对每一个人的要求，再加上创新的活力，让肾畅的明天更好！</p>
                    </div>
                    <div class="col-lg-9 col-md-8 col-sm-4" style="margin-top: 20px;margin-bottom: 20px">
                        <img id="brief-img2" src="images/wenhua-pic1.png">
                    </div>
                </div>

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
            url: 'http://localhost:8080/admin/parts/3/pages',
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

