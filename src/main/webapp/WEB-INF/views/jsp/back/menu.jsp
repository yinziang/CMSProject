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
        <div class="cm-flex"><a href="index.html" class="cm-logo"></a></div>
        <div class="btn btn-primary md-menu-white" data-toggle="cm-menu"></div>
    </nav>
    <div id="cm-menu-content">
        <div id="cm-menu-items-wrapper">
            <div id="cm-menu-scroller">
                <ul class="cm-menu-items">
                    <li class="active"><a href="index.html" class="sf-file-note">模块列表</a></li>
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
                            <li><a href="ico-sf.html">肾畅简介</a></li>
                            <li><a href="ico-md.html">肾畅实力</a></li>
                            <li><a href="ico-fa.html">肾畅文化</a></li>
                            <li><a href="ico-fa.html">社会责任</a></li>
                        </ul>
                    </li>
                    <li class="cm-submenu">
                        <a class="sf-wrench-screwdriver">解决方案 <span class="caret"></span></a>
                        <ul>
                            <li><a href="layouts-breadcrumb1.html">设计规划</a></li>
                            <li><a href="layouts-breadcrumb2.html">市场营销</a></li>
                            <li><a href="layouts-tabs.html">市场营销</a></li>
                            <li><a href="layouts-tabs.html">信息化系统</a></li>
                        </ul>
                    </li>
                    <li class="cm-submenu">
                        <a class="sf-institution">血透中心 <span class="caret"></span></a>
                        <ul>
                            <li><a href="layouts-breadcrumb1.html">嘉鱼康泰血透中心</a></li>
                            <li><a href="layouts-breadcrumb2.html">通山康泰血透中心</a></li>
                            <li><a href="layouts-tabs.html">阳新康泰血透中心</a></li>
                            <li><a href="layouts-tabs.html">崇仁康泰血透中心</a></li>
                        </ul>
                    </li>
                    <li><a href="notepad.html" class="sf-window-layout">最新资讯</a></li>
                    <li><a href="login.html" class="sf-bullhorn">健康宣教</a></li>
                    <li><a href="login.html" class="sf-profile-group">肾友会</a></li>
                    <li><a href="login.html" class="sf-address-book">联系我们</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<%-- end 显示的菜单栏信息--%>