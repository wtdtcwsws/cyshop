<%--
  Created by IntelliJ IDEA.
  User: 罗海
  Date: 2019/9/19
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>

    <!-- Basic page needs
    ============================================ -->
    <title>账号注册</title>
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
            <li class="home"><a href="#">主页   </a><i class="fa fa-angle-right" aria-hidden="true"></i></li><li class="home"><a href="#">账户   </a><i class="fa fa-angle-right" aria-hidden="true"></i></li>
            <li>  注册</li>
        </ul>

        <div class="row">
            <div id="content" class="col-sm-12">
                <h2 class="title">账号注册</h2>
                <p>如果您已经在我们这里开设了账户，请点击  <a href="#">登录</a>.</p>

                <form action="/inserts/members" method="post" class="form-horizontal account-register clearfix">
                    <fieldset id="account">
                        <legend>你的个人资料</legend>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-account">账号</label>
                            <div class="col-sm-10">
                                <input type="text" name="account" placeholder="请输入您的登录账号，要求为纯字母组成" id="input-account" class="form-control">
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-name">名字</label>
                            <div class="col-sm-10">
                                <input type="text" name="name" placeholder="请输入您的真实姓名" id="input-name" class="form-control">
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-phone">联系电话</label>
                            <div class="col-sm-10">
                                <input type="tel" name="phone" placeholder="请输入11位的大陆电话号码" id="input-phone" class="form-control">
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>你的密码</legend>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-password">密码</label>
                            <div class="col-sm-10">
                                <input type="password" name="password" placeholder="请输入您的密码，要求为纯数字" id="input-password" class="form-control">
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-confirm">重复密码</label>
                            <div class="col-sm-10">
                                <input type="password" name="repetitionpPassword" placeholder="重复密码" id="input-confirm" class="form-control">
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                    <div class="buttons">
                        <div class="pull-right">我已经阅读并同意<a href="#" class="agree"><b>《雏鹰商城用户协议》</b></a>
                            <input class="box-checkbox" type="checkbox" name="agree" value="1"> &nbsp;
                            <input type="submit" class="btn btn-primary" value="提交注册" >
                        </div>
                    </div>
                    </fieldset>
                </form>
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

<%--个人添加的js--%>
<script type="text/javascript" src="${root}/front/js/lh/lh-register.js"></script>

<!-- Theme files
============================================ -->


<script type="text/javascript" src="js/themejs/so_megamenu.js"></script>
<script type="text/javascript" src="js/themejs/addtocart.js"></script>
<script type="text/javascript" src="js/themejs/application.js"></script>

</body>
</html>