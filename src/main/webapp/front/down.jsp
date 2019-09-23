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
    <title>网页底部</title>
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
    <%--<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">--%>

    <!-- Libs CSS
    ============================================ -->
    <link rel="stylesheet" href="http://cdn.bootstrapmb.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link href="${root}/front/css/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="${root}/front/js/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="${root}/front/js/owl-carousel/owl.carousel.css" rel="stylesheet">
    <link href="${root}/front/css/themecss/lib.css" rel="stylesheet">
    <link href="${root}/front/js/jquery-ui/jquery-ui.min.css" rel="stylesheet">

    <!-- Theme CSS
    ============================================ -->
    <link href="${root}/front/css/themecss/so_megamenu.css" rel="stylesheet">
    <link href="${root}/front/css/themecss/so-categories.css" rel="stylesheet">
    <link href="${root}/front/css/themecss/so-listing-tabs.css" rel="stylesheet">
    <link href="${root}/front/css/footer1.css" rel="stylesheet">
    <link href="${root}/front/css/header1.css" rel="stylesheet">
    <link id="color_scheme" href="${root}/front/css/theme.css" rel="stylesheet">

    <!-- <link href="css/responsive.css" rel="stylesheet"> -->

    <style>
        .error{
            color: red;
        }
    </style>

</head>

<body class="res layout-subpage">
<div id="wrapper" class="wrapper-full ">
    <!-- Footer Container -->
    <footer class="footer-container type_footer1">
        <!-- Footer Top Container -->
        <section class="footer-top">
            <div class="container content">
                <div class="">
                    <div class=" collapsed-block ">
                        <div class="module clearfix">
                            <h3 class="modtitle">联系方式</h3>
                            <div class="modcontent">
                                <ul class="contact-address">
                                    <li><p><span class="fa fa-map-marker"></span><span>地址 : </span> 四川省成都市，锦江区西部金融中心22楼</p></li>
                                    <li><span class="fa fa-envelope-o"></span><span>邮箱 : </span> <a href="#"> chuying@xinglang.com</a></li>
                                    <li><p><span class="fa fa-phone"> </span><span>联系电话 :</span> 0123456789</p> </li>
                                </ul>
                            </div>
                            <div class="share-icon">
                                <ul>
                                    <li class="facebook"><a href=""><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                    <li class="twitter"><a href=""><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                    <li class="google"><a href=""><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                    <li class="skype"><a href=""><i class="fa fa-skype" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class=" box-information">
                        <div class="module clearfix">
                            <h3 class="modtitle">购物指南</h3>
                            <div class="modcontent">
                                <ul class="menu">
                                    <li><a href="about-us.html">关于我们</a></li>
                                    <li><a href="faq.html">常见问题</a></li>
                                    <li><a href="order-history.html">订购历史</a></li>
                                    <li><a href="order-information.html">订货须知</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class=" box-extras">
                        <div class="module clearfix">
                            <h3 class="modtitle">其他方面</h3>
                            <div class="modcontent">
                                <ul class="menu">
                                    <li><a href="contact.html">联系我们</a></li>
                                    <li><a href="return.html">退货</a></li>
                                    <li><a href="sitemap.html">网站导航</a></li>
                                    <li><a href="my-account.html">我的账户</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="box-account">
                        <div class="module clearfix">
                            <h3 class="modtitle">我的账户</h3>
                            <div class="modcontent">
                                <ul class="menu">
                                    <li><a href="#">旗下品牌</a></li>
                                    <li><a href="gift-voucher.html">礼物</a></li>
                                    <li><a href="#">附属公司</a></li>
                                    <li><a href="#">特刊</a></li>
                                    <li><a href="#" target="_blank">我们的博客</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </div></section>
        <!-- /Footer Top Container -->
        <div class="footer-mid">
            <div class=" help">
                <div class=" container">
                    <div class=" row">
                        <div class="footer-mid-left col-sm-6 col-xs-12">
                            <h3>遇到问题？ </h3>
                            <p>雏鹰团队 24/7 AT (844) 555-8386</p>
                        </div>
                        <div class="footer-mid-right col-sm-6 col-xs-12">
                            <div class="btn-sub">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                                <input class="autosearch-input form-control" type="text" value="" size="50" autocomplete="off" placeholder="你的邮箱（用于回复问题）" name="subscribe">
                                <button type="submit" class="button-search btn btn-primary" name="submit_subscribe">提交问题</button>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- //end Footer Container -->

</div>
<!-- Social widgets -->
<div class="footer-bottom-block ">
    <div class=" container">
        <div class="row">
            <div class="footer-bottom-header">
                <div class="col-xs-12 col-sm-12 col-md-5 download">
                    <h3>APP下载</h3>
                    <a href=""><img src="${root}/front/img/demo/download/app.jpg" alt=""></a>
                    <a href=""><img src="${root}/front/img/demo/download/ggplay.jpg" alt=""></a>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-7 pay">
                    <ul>
                        <li><img src="${root}/front/img/demo/payment/visa.jpg" alt=""></li>
                        <li><img src="${root}/front/img/demo/payment/meastro.jpg" alt=""></li>
                        <li><img src="${root}/front/img/demo/payment/paypal.jpg" alt=""></li>
                        <li><img src="${root}/front/img/demo/payment/union.jpg" alt=""></li>
                        <li><img src="${root}/front/img/demo/payment/cirrus.jpg" alt=""></li>
                        <li><img src="${root}/front/img/demo/payment/ebay.jpg" alt=""></li>
                    </ul>
                </div>
            </div>
            <div class="text-footer-bot">
                <p>CYshoping &copy; 2019-09-22  雏鹰CY.com 版权所有 <a href="#">经营证照</a></p>
            </div>
        </div>
    </div>
</div>	<!-- End Social widgets -->


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
<script type="text/javascript" src="${root}/front/js/jquery-valdation/jquery.validate.js"></script>

<%--个人添加的js--%>
<script type="text/javascript" src="${root}/front/js/lh/lh-register.js"></script>

<!-- Theme files
============================================ -->


<script type="text/javascript" src="${root}/front/js/themejs/so_megamenu.js"></script>
<script type="text/javascript" src="${root}/front/js/themejs/addtocart.js"></script>
<script type="text/javascript" src="${root}/front/js/themejs/application.js"></script>

</body>
</html>