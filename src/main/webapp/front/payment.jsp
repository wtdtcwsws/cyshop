<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>

    <!-- Basic page needs
    ============================================ -->
    <title>支付页面</title>
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
            <li> 支付页面</li>
        </ul>

        <div class="row">
            <!--Middle Part Start-->
            <div id="content" class="col-sm-12">
                <h2 class="title">支付页面</h2>
                <div class="so-onepagecheckout ">
                    <div class="col-right col-sm-12">

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><i class="fa fa-credit-card"></i> 我的收银台</h4>
                            </div>
                            <%--&lt;%&ndash;------------------------------------------支付表单------------------------------------------&ndash;%&gt;--%>
                            <%--<form id="peymentForm" action="/views/frontOrderItem?method=updateOrderStatus" method="post">--%>
                            <%--<div class="panel-body form-row">--%>
                                <%--<div class="form-group col-md-4">--%>
                                    <%--<img src="${root}/front/img/xiaozhupeiqi.png">--%>
                                    <%--<br>--%>
                                    <%--<label class="control-label" for="confirm_agree">--%>
                                        <%--<input type="checkbox" checked="checked" value="1" required="" class="validate required" id="confirm_agree" name="confirm agree">--%>
                                        <%--<span>我已阅读及同意<a class="agree" href="#"><b>《支付条款》</b></a></span> </label>--%>
                                <%--</div>--%>
                                <%--<div class="form-group col-md-8"><br>--%>
                                    <%--<input class="btn btn-outline-secondary " type="button" value="其他支付方式" data-toggle="modal" data-target="#paymentmode">--%>
                                    <%--<div class="modal fade" id="paymentmode" tabindex="-1" role="dialog" aria-labelledby="paymentmodeLabel" aria-hidden="true">--%>
                                        <%--<div class="modal-dialog" role="document">--%>
                                            <%--<div class="modal-content">--%>
                                                <%--<div class="modal-header">--%>
                                                    <%--<h5 class="modal-title" id="paymentmodeLabel">提示</h5>--%>
                                                    <%--<button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
                                                        <%--<span aria-hidden="true">&times;</span>--%>
                                                    <%--</button>--%>
                                                <%--</div>--%>
                                                <%--<div class="modal-body">--%>
                                                    <%--暂不支持此功能，请联系开发方购买--%>
                                                <%--</div>--%>
                                                <%--<div class="modal-footer">--%>
                                                    <%--<button type="button" class="btn btn-secondary" data-dismiss="modal">确定</button>--%>
                                                <%--</div>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>

                                    <%--<input class="btn btn-outline-secondary " type="button" value="添加快捷/网银付款" data-toggle="modal" data-target="#paymentmode"><br><br><br>--%>
                                    <%--<label>请输入支付密码:</label><br>--%>
                                    <%--<input type="text" class="mb-2 mr-sm-2" name="paymentPassword" style="width: 150px;height: 35px">&nbsp;<a href="javascript:;" data-toggle="modal" data-target="#paymentmode">忘记密码？</a><br><br>--%>
                                    <%--<label>请输入6位数字支付密码</label><br>--%>
                                <%--</div>--%>

                                <%--<div class="buttons">--%>
                                    <%--<div >--%>
                                        <%--&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="btn btn-primary" id="button-confirm" value="确认付款">--%>
                                        <%--&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" class="btn btn-primary" id="button-cancel" value="取消付款">--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--</form>--%>


                            <ul id="myTab" class="nav nav-tabs">
                                <li class="active">
                                    <a href="#home" data-toggle="tab">
                                        微信支付
                                    </a>
                                </li>
                                <li><a href="#ios" data-toggle="tab">支付宝支付</a></li>
                                <li class="dropdown">
                                    <a href="#" id="myTabDrop1" class="dropdown-toggle"
                                       data-toggle="dropdown">其他支付方式
                                        <b class="caret"></b>
                                    </a>
                                    <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
                                        <li><a href="#jmeter" tabindex="-1" data-toggle="tab">余额支付</a></li>
                                        <li><a href="#ejb" tabindex="-1" data-toggle="tab">网银支付</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <div id="myTabContent" class="tab-content">
                                <div class="tab-pane fade in active" id="home">
                                    <div style="margin-left: 300px">
                                        <a href="/views/frontOrderItem?method=updateOrderStatus"><img src="${root}/front/img/xiaozhupeiqi.png"></a>
                                        <br>
                                        <label class="control-label">
                                            &nbsp;&nbsp;&nbsp;<input type="checkbox" checked="checked" value="1" required="" class="validate required"  name="confirm agree">
                                            <span>我已阅读及同意<a class="agree" href="#"><b>《微信支付条款》</b></a></span> </label>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="ios">
                                    <div style="margin-left: 300px">
                                        <a href="/views/frontOrderItem?method=updateOrderStatus"><img src="${root}/front/img/xiaozhupeiqi.png"></a>
                                        <br>
                                        <label class="control-label">
                                            <input type="checkbox" checked="checked" value="1" required="" class="validate required"  name="confirm agree">
                                            <span>我已阅读及同意<a class="agree" href="#"><b>《支付宝支付条款》</b></a></span> </label>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="jmeter">
                                    <div style="margin-left: 300px">
                                        <div style="margin: 115px 0">暂不支持此功能，请联系管理员购买</div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="ejb">
                                    <div style="margin-left: 300px">
                                        <div style="margin: 115px 0">暂不支持此功能，请联系管理员购买</div>
                                    </div>
                                </div>
                            </div>


                        </div>

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
<script type="text/javascript" src="${root}/static/lib/jquery-validation/jquery.validate.js"></script>
<%--<script type="text/javascript" src="${root}/static/js/zhy/paymentVerify.js"></script>--%>

</body>
</html>


