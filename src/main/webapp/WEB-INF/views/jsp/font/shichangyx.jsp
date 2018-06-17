<%--
  Created by IntelliJ IDEA.
  User: huaxin
  Date: 2018/6/17
  Time: 11:51
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
                <center id="title"><hr style="margin-top: 30px">MARKETING 市场营销</center>
            </h3>
            <div class="col-lg-12 col-md-12 col-sm-12 zixun" id="market-content">
                <p>
                    <span style="font-size: 16px;">&nbsp; &nbsp; 我们的市场营销也有着很多的优势和步骤，一方面我们通过优质的产品代理来提高产品的质量保证，另一方面我们还有完善的经营管理，再加上我们优质的市场营销的步骤，才得以更好的稳定我们的市场。</span><br/>
                </p>
                <p>
                    <span style="font-size: 16px;"><br/></span>
                </p>
                <h1 style="font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: left; margin: 0px 0px 10px;">
                    <span style="font-size: 20px;">产品代理</span>
                </h1>
                <p>
                    &nbsp; &nbsp; 我们通过和优质产品提供商进行合作，从他们那儿代理优质的产品，一方面给我们提供了好的基础器具的保障，这个样也更便于我们提供良好的服务。另一方面，也可以更大程度上扩展我们的市场，这个时候就是和合作商一起进行市场的扩展和稳定。
                </p>
                <p>
                    <img src="images/shichangyx-pic1.png" title="" alt="demo.jpg"/>
                </p>
                <p>
                    <br/>
                </p>
                <h1 style="font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: left; margin: 0px 0px 10px;">
                    <span style="font-size: 20px;">经营管理</span><br/>
                </h1>
                <p>
                    <span style="font-size: 20px;">&nbsp; &nbsp; <span style="font-size: 16px;">我们有着专业的经营管理团队，是肾畅医疗最珍贵的资产。我们的经营管理优势包括科室制度建立，作业流程建立，专家交流平台，财务顾哪里顾问，翼虎人员管理，信息化系统管理，技术支持以及市场营销计划等。</span><br/></span>
                </p>
                <p>
                    <span style="font-size: 20px;"><span style="font-size: 16px;"></span></span>
                </p>
                <p>
                    <img src="images/shichangyx-pic2.png"/>
                </p>
                <p></p>
                <h1 style="font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: left; margin: 0px 0px 10px;">
                    <span style="font-size: 16px;"><br/></span><span style="font-size: 20px;">市场营销</span>
                </h1>
                <p>
                    <span style="font-size: 20px;">&nbsp; &nbsp; <span style="font-size: 16px;">我们会开展多种交流活动，来丰富和开拓我们的市场，比如有：</span></span>
                </p>
                <ul class=" list-paddingleft-2" style="list-style-type: disc;">
                    <li>
                        <p>
                            <span style="font-size: 20px;"><span style="font-size: 16px;">&nbsp; &nbsp; &nbsp;A、专家论坛学习&nbsp; &nbsp;</span></span>
                        </p>
                    </li>
                    <li>
                        <p>
                            &nbsp; &nbsp; &nbsp;B、肾友会&nbsp; &nbsp;
                        </p>
                    </li>
                    <li>
                        <p>
                            &nbsp; &nbsp; &nbsp;C、区域合作交流
                        </p>
                    </li>
                    <li>
                        <p>
                            <span style="font-size: 20px;"><span style="font-size: 16px;">&nbsp; &nbsp; &nbsp;D、肾友旅游</span></span>
                        </p>
                    </li>
                    <li>
                        <p>
                            <span style="font-size: 20px;"><span style="font-size: 16px;">&nbsp; &nbsp; &nbsp;F、人文关怀活动</span></span>
                        </p>
                        <p>
                            <span style="font-size: 20px;"><span style="font-size: 16px;"></span></span>
                        </p>
                    </li>
                </ul>
                <p>
                    <span style="font-size: 20px;"><span style="font-size: 16px;">&nbsp; &nbsp; &nbsp;详情如下图展示：</span></span>
                </p>
                <p>
                    <span style="font-size: 20px;"><span style="font-size: 16px;"><img src="images/shichangyx-pic3.png" title="" alt="demo.jpg"/></span></span>
                </p>
                <p>
                    <span style="font-size: 20px;"><br/></span>
                </p>
                <p>
                    <span style="font-size: 20px;"><br/></span>
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
            url: 'http://localhost:8080/admin/parts/6/pages',
            success: function(res){
                console.log(res)
                if(res.status == 200){
                    document.getElementById("title").innerHTML = res.data[0].title;
                    document.getElementById("market-content").innerHTML = res.data[0].content;
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

