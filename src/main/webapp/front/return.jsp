<%@ page import="com.cyxz.cyshop.domain.Sku" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
  Created by IntelliJ IDEA.
  User: 罗海
  Date: 2019/9/20
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>



<!DOCTYPE html>
<html lang="en">
<head>

    <!-- Basic page needs
    ============================================ -->
    <title>Destino - Advanced & High Customizable eCommerce HTML5/CSS3 Theme</title>
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


</head>

<body class="res layout-subpage">
<div id="wrapper" class="wrapper-full ">
    <!-- Header Container  -->
<%@include file="top.jsp"%>
    <!-- //Header Container  -->
    <!-- Main Container  -->
    <div class="main-container container">
        <ul class="header-main ">
            <li class="home"><a href="#">Home   </a><i class="fa fa-angle-right" aria-hidden="true"></i></li>
            <li> Return</li>
        </ul>

        <div class="row">
            <!--Middle Part Start-->
            <div id="content" class="col-sm-9">
                <h2 class="title">商品退货/款</h2>
                <p>请详细填写下列表格，以便及时处理退货/款要求。</p>

                <div class="form-horizontal">
                    <fieldset>
                        <legend>订单信息</legend>
                        <div class="form-group">
                            <label for="input-lastname" class="col-sm-2 control-label">姓名</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="input-lastname" placeholder="客户姓名" value="${member.name}" name="name" disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="input-order-id" class="col-sm-2 control-label">订单编号</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="input-order-id" placeholder="需要退货的订单编号，可在订单中查找" value="${orders.id}" name="order_id" disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">下单时间</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" value="${dateForMat.DateAndDate(orders.creat_time)}" name="time" disabled>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label for="input-telephone" class="col-sm-2 control-label">联系电话</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="input-telephone" placeholder="客户联系电话" value="${member.phone}" name="phone">
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>需要退货/款的商品信息及原因</legend>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label">商品名称</label>
                            <div class="col-sm-10">

                                <c:forEach var="skuu" items="${skus}">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" data-js="ck" name="shoping-name">${skuu.name}
                                        </label>
                                        <div data-js="shuliang">
                                        </div>
                                    </div>
                                </c:forEach>

                            </div>
                        </div>

                        <div class="form-group required">
                            <label for="input-comment" class="col-sm-2 control-label">退货原因</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" id="input-comment" placeholder="退货原因填写，请详细填写退货原因，以便工作人员更迅速的处理您的请求" rows="10" name="cause"></textarea>
                            </div>
                        </div>
                    </fieldset>
                    <div class="buttons clearfix">
                        <div class="pull-left"><a class="btn btn-default buttonGray" href="/views/frontOrderItem?method=findAllOrder">返回</a>
                        </div>
                        <div class="pull-right">
                            <button type="button" class="btn btn-primary" data-js="submits">提交</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
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

<script src="js/lh/lh-return.js"></script>


<!-- Theme files
============================================ -->


<script type="text/javascript" src="js/themejs/so_megamenu.js"></script>
<script type="text/javascript" src="js/themejs/addtocart.js"></script>
<script type="text/javascript" src="js/themejs/application.js"></script>

</body>
</html>