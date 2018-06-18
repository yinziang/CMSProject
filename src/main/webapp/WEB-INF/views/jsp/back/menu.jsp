<%--
  Created by IntelliJ IDEA.
  User: huaxin
  Date: 2018/6/14
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 显示的菜单栏信息--%>
<div id="cm-menu">
    <nav class="cm-navbar cm-navbar-primary">
        <div class="cm-flex"><a href="/admin/index" class="cm-logo"></a></div>
        <div class="btn btn-primary md-menu-white" data-toggle="cm-menu"></div>
    </nav>
    <div id="cm-menu-content">
        <div id="cm-menu-items-wrapper">
            <div id="cm-menu-scroller">
                <ul class="cm-menu-items">
                    <li class="active"><a href="/admin/modules" class="sf-file-note">模块列表</a></li>
                    <li class="cm-submenu">
                        <a class="sf-house">首页 <span class="caret"></span></a>
                        <ul>
                            <li><a href="/getSlider">轮播图</a></li>
                            <li><a href="/getSolution">解决方案</a></li>
                            <li><a href="/getBrief">我们的简介</a></li>
                        </ul>
                    </li>
                    <li class="cm-submenu">
                        <a class="sf-sign-info">关于肾畅 <span class="caret"></span></a>
                        <ul>
                            <li><a href="/admin/toBrief">肾畅简介</a></li>
                            <li><a href="/admin/toShiLi">肾畅实力</a></li>
                            <li><a href="/admin/toWenHua">肾畅文化</a></li>
                            <li><a href="/admin/toZeRen">社会责任</a></li>
                        </ul>
                    </li>
                    <li class="cm-submenu">
                        <a class="sf-wrench-screwdriver">解决方案 <span class="caret"></span></a>
                        <ul>
                            <li><a href="/admin/toDesign">设计规划</a></li>
                            <li><a href="/admin/toMarket">市场营销</a></li>
                            <li><a href="/admin/toTrain">人员培训</a></li>
                            <li><a href="/admin/toSystem">信息化系统</a></li>
                        </ul>
                    </li>
                    <li class="cm-submenu">
                        <a class="sf-institution">血透中心 <span class="caret"></span></a>
                        <ul>
                            <li><a href="/admin/toJYCenter">嘉鱼康泰血透中心</a></li>
                            <li><a href="/admin/toTSCenter">通山康泰血透中心</a></li>
                            <li><a href="/admin/toYXCenter">阳新康泰血透中心</a></li>
                            <li><a href="/admin/toCRCenter">崇仁康泰血透中心</a></li>
                        </ul>
                    </li>
                    <li><a href="/admin/listNews" class="sf-window-layout">最新资讯</a></li>
                    <li><a href="/admin/listHealthEdus" class="sf-bullhorn">健康宣教</a></li>
                    <li><a href="login.html" class="sf-profile-group">肾友会</a></li>
                    <li><a href="/admin/toContact" class="sf-address-book">联系我们</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<%-- end 显示的菜单栏信息--%>
