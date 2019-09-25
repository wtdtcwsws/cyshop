<%@ page import="java.util.List" %>
<%@ page import="com.cyxz.cyshop.domain.Member" %><%--网页的上半部分使用--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Basic page needs
    ============================================ -->

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
    <link rel="shortcut icon" href="ico/favicon.png">

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
<%
    Member  member = (Member) session.getAttribute("login-info");
%>
</head>

<body class="res layout-subpage">
<div id="wrapper" class="wrapper-full ">
    <!-- Header Container  -->
    <header id="header" class=" variantleft type_1">
        <!-- Header Top -->
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="header-top-left form-inline col-sm-6 col-xs-6 compact-hidden">
                        <div class="form-group" style="font-size: 18px;margin-right: 5px">
                            雏鹰商城
                        </div>
                        <div class="form-group languages-block" style="padding-top: 5px">
                            寻找你最初的购物感觉！
                        </div>
                    </div>
                    <div class="header-top-right collapsed-block text-right  col-sm-6 col-xs-6 compact-hidden">
                        <div class="tabBlock1" id="TabBlock-1">
                            <ul class="top-link list-inline">

                                <%
                                    if(member == null){
                                %>
                                <li class="signin"><a href="login.jsp" class="top-link-checkout" title="Sign In"><span>登录</span></a></li>
                                <li class="register"><a href="register.jsp" title="Register"><span>注册</span></a></li>
                               <%
                                   }else{
                               %>
                                <li class="signin"><span> <strong><%=member.getName()%></strong> 您好！</span></li>
                                <li class="signin"><span><a class="top_cart dropdown-toggle"  href="/views/frontOrderItem?method=findAllOrder">我的订单</a></span></li>
                                <li class="register"><a href="/out" >退出</a></li>
                                <%}%>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //Header Top -->

        <!-- Header center -->
        <div class="header-center left" style="padding-top: 5px;padding-bottom: 5px">
            <div class="container">
                <div class="row">
                    <!-- Logo -->
                    <div class=" col-md-3 col-sm-12 col-xs-7 m-0" style="width: 180px">
                        <a href="index.php"><img src="${root}/front/img/雏鹰商城图标最终版.png" title="商城主页" alt="Your Store" style="height: 90px;width: 140px"></a>
                    </div>
                    <!-- //end Logo -->

                    <!-- Search -->
                    <div id="sosearchpro" class="col-xs-12 col-sm-8 col-md-5 search-pro" style="margin-top: 18px">
                        <form method="GET" action="index.html">
                            <div id="search0" class="search input-group">
                                <input class="autosearch-input form-control" type="text" value="" size="50" autocomplete="off" placeholder="请输入您要查询的内容..." name="search">
                                <span class="input-group-btn">
										<button type="submit" class="button-search btn btn-primary" name="submit_search"><i class="fa fa-search"></i></button>
									</span>
                            </div>
                        </form>
                    </div>
                    <!-- //end Search -->

                    <!-- Secondary menu -->
                    <div class="col-md-4 col-sm-4 col-xs-5 shopping_cart pull-right" style="margin-top: 18px">
                        <div class="header-text hidden-xs">
                            <p><i class="fa fa-phone" aria-hidden="true"></i>	   客服热线: (888) 123456789</p>
                        </div>
                        <!--cart-->

                        <%
                            if(member != null){
                        %>
                        <div id="cart" class=" btn-group btn-shopping-cart">
                            <a href="${root}/operate/cart">

                                <div class="shopcart">
                                    <%--<span class=""></span>--%>
                                   <span class="handle pull-left"></span>
                                    <span class="title">我的购物车</span>
                                    <p class="text-shopping-cart cart-total-full">点击进入 </p>
                                </div>

                            </a>
                        </div>
                        <%}else {%>

                        <%}%>
                        <!--//cart-->
                    </div>
                </div>
            </div>
        </div>
        <!-- //Header center -->
        <!-- Header Bottom -->
        <div class="header-bottom" style="height: 50px"></div>
    </header>
    <!-- //Header Container  -->
</div>
<!-- Placed at the end of the document so the pages load faster -->
<%--<script type="text/javascript" src="${root}/front/js/jquery-2.2.4.min.js"></script>--%>
<%--<script type="text/javascript" src="http://cdn.bootstrapmb.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>--%>
<%--<script type="text/javascript" src="${root}/front/js/owl-carousel/owl.carousel.js"></script>--%>
<%--<script type="text/javascript" src="${root}/front/js/themejs/libs.js"></script>--%>
<%--<script type="text/javascript" src="${root}/front/js/unveil/jquery.unveil.js"></script>--%>
<%--<script type="text/javascript" src="${root}/front/js/countdown/jquery.countdown.min.js"></script>--%>
<%--<script type="text/javascript" src="${root}/front/js/dcjqaccordion/jquery.dcjqaccordion.2.8.min.js"></script>--%>
<%--<script type="text/javascript" src="${root}/front/js/datetimepicker/moment.js"></script>--%>
<%--<script type="text/javascript" src="${root}/front/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>--%>
<%--<script type="text/javascript" src="${root}/front/js/jquery-ui/jquery-ui.min.js"></script>--%>


<%--<!-- Theme files ============================================ -->--%>


<%--<script type="text/javascript" src="${root}/front/js/themejs/so_megamenu.js"></script>--%>
<%--<script type="text/javascript" src="${root}/front/js/themejs/addtocart.js"></script>--%>
<%--<script type="text/javascript" src="${root}/front/js/themejs/application.js"></script>--%>

</body>
</html>