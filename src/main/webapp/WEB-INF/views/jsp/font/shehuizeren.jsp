<%--
  Created by IntelliJ IDEA.
  User: huaxin
  Date: 2018/6/17
  Time: 11:43
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
                <center id="title"><hr style="margin-top: 30px">RESPONSIBILITY 社会责任</center>
            </h3>
            <div class="content-page">
                <div  class="col-lg-12 col-md-12 col-sm-12 zixun">
                    <div id="brief-txt-1" class="col-lg-4 col-md-4 col-sm-4" style="margin-top: 20px">
                        <p class="para" style="font-size: 15px">
                            &nbsp;&nbsp;&nbsp;&nbsp;湖北肾畅泰康医疗科技有限公司，是一家专注于血液透析领域投资、运营和管理的公司.</p>
                        <p class="para" style="font-size: 15px">&nbsp;&nbsp;&nbsp;&nbsp;我们也是一家具有社会责任感的企业，作为一家医疗企业，安全是至关重要的，我们具有四大核心竞争力
                            ，从而为我们的客户提供安全有保证的服务。</p>
                        <p class="para" style="font-size: 15px">&nbsp;&nbsp;&nbsp;&nbsp;我们有着先进的管理团队，顶尖的业务团队，丰富的临床资源以及标准的作业流程。</p>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-8" style="margin-top: 20px;margin-bottom: 20px">
                        <img id="brief-img1" src="images/shehuizeren-pic1.png"></div>
                </div>
                <div id="brief-txt-2" class="col-lg-12 col-md-12 col-sm-12 zixun">

                    <p>
                        <br />
                    </p>
                    <p>
                        <span style="font-size:16px;">作为一家企业应该承担的社会责任有：</span>
                    </p>
                    <p>
                        <span style="font-size:16px;"><strong>经济责任：</strong>指公司生产、盈利、满足消费需求的责任。其核心是公司创造利润、实现价值的能力。</span>
                    </p>
                    <p>
                        <span style="font-size:16px;">公司的经济责任表现可以通过财务、产品服务、治理结构三个方面进行考察。</span><span style="font-size:16px;">尽管企业社会责任并没有一个单一的定义，但从本质上，追求这一方法的公司，需要做三件重要事情：</span>
                    </p>
                    <p>
                        <span style="font-size:16px;">&nbsp; &nbsp; &nbsp; 第一，公司认识到，其经营活动对其所处的社会将产生很大影响；而社会发展同样也会影响公司追求企业成功的能力；</span>
                    </p>
                    <p>
                        <span style="font-size:16px;">&nbsp; &nbsp; &nbsp; 第二，作为响应，公司积极管理其世界范围内的经营活动在经济、社会、环境等方面的影响，不仅使其为公司的业务运作和企业声誉带来好处，而且还使其造福于企业所在地区的社会团体；</span>
                    </p>
                    <p>
                        <span style="font-size:16px;">&nbsp; &nbsp; &nbsp; 第三，公司通过与其他群体和组织、地方团体、社会和政府部门进行密切合作，来实现这些利益。</span>
                    </p>
                    <p>
                        <span style="font-size:16px;"><br /></span>
                    </p>
                    <p>
                        <span style="font-size:16px;"><strong>持续发展责任：</strong>指保证企业与社会持续发展的责任。该项责任可以通过环保责任和创新责任两方面进行考察。</span>
                    </p>
                    <p><span style="font-size:16px;"><br /></span>
                    </p>
                    <p>
                        <span style="font-size:16px;"><strong>法律责任：</strong>指公司履行法律法规各项义务的责任。该项责任可以通过税收责任和雇主责任两个方面进行考察。&nbsp;</span>
                    </p>
                    <p><span style="font-size:16px;"><br /></span>
                    </p>
                    <div>
                        <span style="font-size:16px;"><strong>道德责任：</strong>指公司满足社会准则、规范和价值观、回报社会的责任。该项责任可以通过内部道德责任和外部道德责任两个方面考察。</span>
                    </div>
                    <p>
                        <br />
                    </p>

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
            url: 'http://localhost:8080/admin/parts/4/pages',
            success: function(res){
                console.log(res)
                if(res.status == 200){
                    console.log("操作成功")
                    document.getElementById("title").src = res.data[0].title;
                    document.getElementById("brief-img1").src = res.data[0].imageUrl;
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

