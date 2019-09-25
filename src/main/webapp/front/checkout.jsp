<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhy
  Date: 2019/9/19 0019
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>

    <!-- Basic page needs
    ============================================ -->
    <title>确认订单</title>
    <meta charset="utf-8">
    <meta name="keywords" content="boostrap, responsive, html5, css3, jquery, theme, multicolor, parallax, retina, business" />
    <meta name="author" content="Magentech">
    <meta name="robots" content="index, follow" />

    <!-- Mobile specific metas
    ============================================ -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- Favicon
    ============================================ -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${root}/front/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${root}/front/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${root}/front/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="${root}/front/ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="${root}/front/ico/favicon.png">

    <!-- Google web fonts
    ============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

    <!-- Libs CSS
    ============================================ -->
    <link rel="stylesheet" href="http://cdn.bootstrapmb.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link href="${root}/front/css/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="${root}/front/js/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="${root}/front/js/owl-carousel/owl.carousel.css" rel="stylesheet">
    <%--------------------------------------%>
    <link href="${root}/front/js/owl-carousel/assets/owl.theme.default.min.css" rel="stylesheet">

    <link href="${root}/front/css/themecss/lib.css" rel="stylesheet">
    <link href="${root}/front/js/jquery-ui/jquery-ui.min.css" rel="stylesheet">

    <!-- Theme CSS
    ============================================ -->
    <link href="${root}/front/css/themecss/so_megamenu.css" rel="stylesheet">
    <link href="${root}/front/css/themecss/so-categories.css" rel="stylesheet">
    <link href="${root}/front/css/themecss/so-listing-tabs.css" rel="stylesheet">
    <link href="${root}/front/css/footer1.css" rel="stylesheet">
    <link href="${root}/front/css/header1.css" rel="stylesheet">
    <link href="${root}/front/css/checkout.css" rel="stylesheet">
    <link id="color_scheme" href="${root}/front/css/theme.css" rel="stylesheet">

    <%------------------------------%>
    <link href="${root}/front/css/footer1.css" rel="stylesheet">
    <link href="${root}/front/css/header1.css" rel="stylesheet">

    <!-- <link href="css/responsive.css" rel="stylesheet"> -->



</head>

<body class="res layout-subpage">
<div id="wrapper" class="wrapper-full ">
    <!-- Header Container  -->
    <%@include file="/front/top.jsp"%>
    <!-- //Header Container  -->
    <!-- Main Container  -->
    <div class="main-container container">
        <ul class="header-main ">
            <li class="home"><a href="${root}/front/index.jsp">主页   </a><i class="fa fa-angle-right" aria-hidden="true"></i></li>
            <li> 订单确认</li>
        </ul>

        <div class="row">
            <!--Middle Part Start-->
            <div id="content" class="col-sm-12">
                <h2 class="title">订单确认页面</h2>
                <div class="so-onepagecheckout ">
                    <div id="confirmOrder" class="col-right col-sm-12">

                        <%--此处为半截页面--%>
                        <%@ include file="checkout-Form.jsp" %>

                    </div>
                </div>
            </div>
            <!--Middle Part End -->

        </div>
    </div>
    <!-- //Main Container -->

    <!-- Footer Container -->
    <%@include file="/front/down.jsp"%>
    <!-- //end Footer Container -->

</div>


<!-- Include Libs & Plugins
	============================================ -->
<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="${root}/front/js/jquery-2.2.4.min.js"></script>
<script type="text/javascript" src="http://cdn.bootstrapmb.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${root}/front/js/owl-carousel/owl.carousel.js"></script>
<script type="text/javascript" src="${root}/front/js/themejs/libs.js"></script>
<script type="text/javascript" src="${root}/front/js/unveil/jquery.unveil.js"></script>
<script type="text/javascript" src="${root}/front/js/countdown/jquery.countdown.min.js"></script>
<script type="text/javascript" src="${root}/front/js/dcjqaccordion/jquery.dcjqaccordion.2.8.min.js"></script>
<script type="text/javascript" src="${root}/front/js/datetimepicker/moment.js"></script>
<script type="text/javascript" src="${root}/front/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="${root}/front/js/jquery-ui/jquery-ui.min.js"></script>


<!-- Theme files
============================================ -->


<script type="text/javascript" src="${root}/front/js/themejs/so_megamenu.js"></script>
<script type="text/javascript" src="${root}/front/js/themejs/addtocart.js"></script>
<script type="text/javascript" src="${root}/front/themejs/application.js"></script>
<script type="text/javascript" src="${root}/static/js/zhy/checkForm-ajax.js"></script>

</body>
</html>

