<%--
  Created by IntelliJ IDEA.
  User: huaxin
  Date: 2018/6/13
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录失败</title>
    <script type="text/javascript">
        onload=function(){
            setInterval(go, 1000);
        };
        var x=3; //利用了全局变量来执行
        function go(){
            x--;
            if(x>0){
                document.getElementById("sp").innerHTML=""+x+"后跳转到首页";  //每次设置的x的值都不一样了。
            }else{
                location.href='/admin/index';
            }
        }
    </script>
</head>
<body>

<h3 align="center" style="margin-top: 100px">文件上传错误！</h3>
<p id="sp"  style="margin-top: 150px;font-size: 26px;text-align: center;"></p>

</body>
</html>
