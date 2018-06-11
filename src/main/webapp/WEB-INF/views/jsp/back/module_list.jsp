<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html >
<html>
<head>
    <base href="${base}/" />
    <title>后台管理</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="css/admin.css" />
    <script type="text/javascript" src="js/jquery-2.0.3.js"></script>
    <script type="text/javascript">
        function goPage(p) {
            $("#page").val(p);
            $("#form1").submit();
        }
    </script>
</head>
<body>
<div class="container">
    <div id="header">
        <jsp:include page="header.jsp" />
    </div>
    <div id="admin_left">
        <ul class="submenu">
            <jsp:include page="left.jsp" />
        </ul>
        <div id="copyright"></div>
    </div>

    <div id="admin_right">
        <div class="field">
            <table class="list_table">
                <thead>
                <tr>
                    <th>模块名称</th>
                    <th>操作</th>
                </tr>
                </thead>
            </table>
        </div>
        <div class="content">
            <table class="list_table">
                <tbody>
                <c:forEach items="${moduleList}" var="module">
                    <tr>
                        <td>${module.id}</td>
                        <td>${module.mname}</td>
                        <td><a href="./goods/update?goodsId=${module.id}">
                            <img class="operator" src="images/admin/icon_edit.gif" alt="编辑" /></a>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>


    </div>

</div>
</body>
</html>
