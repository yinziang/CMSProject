<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html >
<html lang="en">
<head>
    <meta charset="utf-8">
    <base href="${base}/" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">
    <link rel="stylesheet" type="text/css" href="/css/bootstrap-clearmin.min.css">
    <link rel="stylesheet" type="text/css" href="/css/roboto.css">
    <link rel="stylesheet" type="text/css" href="/css/material-design.css">
    <link rel="stylesheet" type="text/css" href="/css/small-n-flat.css">
    <link rel="stylesheet" type="text/css" href="/css/font-awesome.min.css">
    <title>Clearmin template</title>
</head>
<body class="cm-no-transition cm-1-navbar">
<jsp:include page="menu.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<div id="global">
    <div class="container-fluid cm-container-white">
        <h2 style="margin-top:0;">Welcome to Clearmin template demo !</h2>
        <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum
            tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas
            semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien
            ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean
            fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec
            non enim in turpis pulvinar facilisis. Ut felis.</p>
    </div>
    <div class="container-fluid">
        <div class="row cm-fix-height">
            <div class="col-sm-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <img src="/img/sass-less.png" alt="Less support" class="img-responsive">
                        <br>
                        <p>Clearmin ships with vanilla CSS, but its source code utilizes Less CSS preprocessor. Quickly
                            get started with precompiled CSS or build on the source. Colors and sizes are easily
                            customizable with less variables.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <img src="/img/devices.png" alt="Responsive across devices" class="img-responsive">
                        <br>
                        <p>Clearmin easily and efficiently scales your websites and applications with a single code
                            base, from phones to tablets to desktops with CSS media queries. Swipe from left on phones
                            to toggle main menu.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <img src="/img/components.png" alt="Components" class="img-responsive">
                        <br>
                        <p>With Bootstrap, you get extensive and beautiful documentation for common HTML elements,
                            dozens of custom HTML and CSS components, and awesome jQuery plugins.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row cm-fix-height">
            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                <a href="dashboard-sales.html" class="panel panel-default thumbnail cm-thumbnail">
                    <div class="panel-body text-center">
                                <span class="svg-48">
                                    <img src="/img/sf/dashboard.svg" alt="dashboard">
                                </span>
                        <h4>Dashboard</h4>
                        <small>C3.js charts to display some fancy pies.</small>

                    </div>
                </a>
            </div>
            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                <a href="notepad.html" class="panel panel-default thumbnail cm-thumbnail">
                    <div class="panel-body text-center">
                                <span class="svg-48">
                                    <img src="/img/sf/notepad.svg" alt="notepad">
                                </span>
                        <h4>Text editor</h4>
                        <small>Summernote WYSIWYG Editor implementation.</small>

                    </div>
                </a>
            </div>
            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                <a href="components-text.html" class="panel panel-default thumbnail cm-thumbnail">
                    <div class="panel-body text-center">
                                <span class="svg-48">
                                    <img src="/img/sf/brick.svg" alt="brick">
                                </span>
                        <h4>Components</h4>
                        <small>Bootstrap main classes.</small>

                    </div>
                </a>
            </div>
            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                <a href="layouts-breadcrumb1.html" class="panel panel-default thumbnail cm-thumbnail">
                    <div class="panel-body text-center">
                                <span class="svg-48">
                                    <img src="/img/sf/window-layout.svg" alt="window-layout">
                                </span>
                        <h4>Navbar layouts</h4>
                        <small>Put all you need on the top of your screen.</small>

                    </div>
                </a>
            </div>
            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                <a href="ico-sf.html" class="panel panel-default thumbnail cm-thumbnail">
                    <div class="panel-body text-center">
                                <span class="svg-48">
                                    <img src="/img/sf/cat.svg" alt="cat">
                                </span>
                        <h4>Icons</h4>
                        <small>Semantic little pics.</small>

                    </div>
                </a>
            </div>
            <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                <a href="login.html" class="panel panel-default thumbnail cm-thumbnail">
                    <div class="panel-body text-center">
                                <span class="svg-48">
                                    <img src="/img/sf/lock-open.svg" alt="lock-open">
                                </span>
                        <h4>Login page</h4>
                        <small>Have a look to the login page.</small>

                    </div>
                </a>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">Check our fancy colors</div>
            <div class="panel-body" id="demo-buttons">
                <p>Click buttons below to change navbar main color :</p>
                <div class="row">
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                        <button class="btn btn-block btn-primary" data-switch-color="primary">primary</button>
                        <br>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                        <button class="btn btn-block btn-success" data-switch-color="success">success</button>
                        <br>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                        <button class="btn btn-block btn-info" data-switch-color="info">info</button>
                        <br>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                        <button class="btn btn-block btn-warning" data-switch-color="warning">warning</button>
                        <br>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                        <button class="btn btn-block btn-danger" data-switch-color="danger">danger</button>
                        <br>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                        <button class="btn btn-block btn-gray" data-switch-color="gray">gray</button>
                        <br>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                        <button class="btn btn-block btn-yellow" data-switch-color="yellow">yellow</button>
                        <br>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                        <button class="btn btn-block btn-purple" data-switch-color="purple">purple</button>
                        <br>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                        <button class="btn btn-block btn-turquoise" data-switch-color="turquoise">turquoise</button>
                        <br>
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-2">
                        <button class="btn btn-block btn-midnight" data-switch-color="midnight">midnight</button>
                        <br>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</div>

<script src="/js/lib/jquery-2.1.3.min.js"></script>
<script src="/js/jquery.mousewheel.min.js"></script>
<script src="/js/jquery.cookie.min.js"></script>
<script src="/js/fastclick.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/clearmin.min.js"></script>
<script src="/js/demo/home.js"></script>
</body>
</html>
