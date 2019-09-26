<%--
  Created by IntelliJ IDEA.
  User: 罗海
  Date: 2019/9/19
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>

    <!-- Basic page needs
    ============================================ -->
    <title>账号登录</title>
    <meta charset="utf-8">
    <meta name="keywords" content="boostrap, responsive, html5, css3, jquery, theme, multicolor, parallax, retina, business" />
    <meta name="author" content="Magentech">
    <meta name="robots" content="index, follow" />

    <!-- Mobile specific metas
    ============================================ -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- Favicon
    ============================================ -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="ico/favicon.png">

    <!-- Google web fonts
    ============================================ -->
    <%--<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">--%>

    <!-- Libs CSS
    ============================================ -->
    <link rel="stylesheet" href="http://cdn.bootstrapmb.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link href="css/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="js/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="js/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="css/themecss/lib.css" rel="stylesheet">
    <link href="js/jquery-ui/jquery-ui.min.css" rel="stylesheet">

    <!-- Theme CSS
    ============================================ -->
    <link href="css/themecss/so_megamenu.css" rel="stylesheet">
    <link href="css/themecss/so-categories.css" rel="stylesheet">
    <link href="css/themecss/so-listing-tabs.css" rel="stylesheet">
    <link href="css/footer1.css" rel="stylesheet">
    <link href="css/header1.css" rel="stylesheet">
    <link id="color_scheme" href="css/theme.css" rel="stylesheet">

    <!-- <link href="css/responsive.css" rel="stylesheet"> -->

    <style>
        .error{
            color: red;
        }
    </style>


</head>

<body class="res layout-subpage">
<div id="wrapper" class="wrapper-full ">
    <!-- Header Container  -->
    <%@include file="top.jsp"%>
    <!-- //Header Container  -->
    <!-- Main Container  -->
    <div class="main-container container">
        <ul class="header-main ">
            <li class="home"><a href="#">主页   </a><i class="fa fa-angle-right" aria-hidden="true"></i></li>
            <li class="home"><a href="#">账户   </a><i class="fa fa-angle-right" aria-hidden="true"></i></li>
            <li>  登录</li>
        </ul>

        <div class="row">
            <div id="content" class="col-sm-12">
                <div class="page-login">

                    <div class="account-border">
                        <div class="row">
                            <div class="col-sm-6 new-customer">
                                <div class="well">
                                    <h2><i class="fa fa-user-plus" aria-hidden="true"></i>新客户您好！</h2>
                                    <p>通过创建一个帐户，您将能够更快地购物，了解订单的最新状态，并跟踪您以前的订单。</p>
                                </div>
                                <div class="bottom-form">
                                    <a href="#" class="btn btn-default pull-right">继续</a>
                                </div>
                            </div>

                            <form action="/select/member" id="form" autocomplete="off">

                                <div class="col-sm-6 customer-login">
                                    <div class="well">
                                        <h2><i class="fa fa-user" aria-hidden="true"></i>用户登录</h2>
                                        <p><strong>我是一名回头客</strong></p>
                                        <div class="form-group">
                                            <label class="control-label " for="input-account">账号</label>
                                            <input type="text" name="account" placeholder="请输入用于登录商城的账号" id="input-account" class="form-control" />
                                            <span data-js="account"></span>
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label " for="input-password">密码</label>
                                            <input type="password" name="password" placeholder="请输入用于登录商城的密码" id="input-password" class="form-control" />
                                            <span data-js="password"></span>
                                        </div>
                                    </div>
                                    <div class="bottom-form">
                                        <a href="#" class="forgot">忘记密码？</a>
                                        <input type="submit" data-js="login-button" value="登录" class="btn btn-default pull-right"/>
                                    </div>
                                </div>

                            </form>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- //Main Container -->

</div>
<!-- Social widgets -->
<%@include file="down.jsp"%>
<div class="back-to-top"><i class="fa fa-angle-up"></i><span> 顶部 </span></div>
<!-- End Social widgets -->
<!-- Include Libs & Plugins
	============================================ -->
<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="http://cdn.bootstrapmb.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/owl-carousel/owl.carousel.js"></script>
<script type="text/javascript" src="js/themejs/libs.js"></script>
<script type="text/javascript" src="js/unveil/jquery.unveil.js"></script>
<script type="text/javascript" src="js/countdown/jquery.countdown.min.js"></script>
<script type="text/javascript" src="js/dcjqaccordion/jquery.dcjqaccordion.2.8.min.js"></script>
<script type="text/javascript" src="js/datetimepicker/moment.js"></script>
<script type="text/javascript" src="js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="js/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/jquery-valdation/jquery.validate.js"></script>

<%--个人添加的JavaScript--%>
<script type="text/javascript" src="${root}/front/js/lh/lh-login.js"></script>

<!-- Theme files
============================================ -->


<script type="text/javascript" src="js/themejs/so_megamenu.js"></script>
<script type="text/javascript" src="js/themejs/addtocart.js"></script>
<script type="text/javascript" src="js/themejs/application.js"></script>



</body>
</html>