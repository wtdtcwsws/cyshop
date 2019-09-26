<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="en">
<head>

    <!-- Basic page needs
    ============================================ -->
    <title>网上商城</title>
    <meta charset="utf-8">
    <meta name="keywords"
          content="boostrap, responsive, html5, css3, jquery, theme, multicolor, parallax, retina, business"/>
    <meta name="author" content="Magentech">
    <meta name="robots" content="index, follow"/>

    <!-- Mobile specific metas
    ============================================ -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- Favicon
    ============================================ -->

    <link rel="shortcut icon" href="${root}/front/ico/favicon.png">


    <!-- Libs CSS
    ============================================ -->
    <link rel="stylesheet" href="http://cdn.bootstrapmb.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link href="${root}/front/css/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="${root}/front/js/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="${root}/front/js/owl-carousel/assets/owl.carousel.css" rel="stylesheet">
    <link href="${root}/front/js/owl-carousel/assets/owl.theme.default.min.css" rel="stylesheet">
    <link href="${root}/front/css/themecss/lib.css" rel="stylesheet">
    <link href="${root}/front/js/jquery-ui/jquery-ui.min.css" rel="stylesheet">

    <!-- Theme CSS
    ============================================ -->
    <link href="${root}/front/css/themecss/so_megamenu.css" rel="stylesheet">
    <link href="${root}/front/css/themecss/so-categories.css" rel="stylesheet">
    <link href="${root}/front/css/themecss/so-listing-tabs.css" rel="stylesheet">
    <link href="${root}/front/css/themecss/so-newletter-popup.css" rel="stylesheet">
    <link href="${root}/front/css/themecss/just_purchased_notification.css" rel=stylesheet>

    <link href="${root}/front/css/footer1.css" rel="stylesheet">
    <link href="${root}/front/css/header1.css" rel="stylesheet">
    <link id="color_scheme" href="${root}/front/css/theme.css" rel="stylesheet">
    <%--自己家的文件--%>

</head>

<body class="common-home res layout-home1">



<div id="wrapper" class="wrapper-full banners-effect-7">


    <!-- Header Container引入网页头部文件  -->

    <%@include file="top.jsp" %>
    <!-- //Header Container  -->

    <!-- Block Spotlight1  -->
    <section class="so-spotlight1 ">
        <div class="container">
            <div class="row">
                <div class="sidebar-menu col-md-3 col-sm-12 hidden-xs ">
                    <div class="responsive so-megamenu ">
                        <div class="so-vertical-menu no-gutter compact-hidden">
                            <nav class="navbar-default">
                                <div class="container-megamenu vertical open">
                                    <div id="menuHeading-1">
                                        <div class="megamenuToogle-wrapper">
                                            <div class="megamenuToogle-pattern">
                                                <div class="container">
                                                    <div>
                                                        <span></span>
                                                        <span></span>
                                                        <span></span>
                                                    </div>
                                                    所有商品

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="navbar-header">
                                        <button id="show-verticalmenu" data-toggle="collapse"
                                                class="navbar-toggle fa fa-list-alt">

                                        </button>

                                    </div>
                                    <div class="vertical-wrapper " >
                                        <span id="remove-verticalmenu" class="fa fa-times"></span>
                                        <div class="megamenu-pattern">
                                            <div class="container">
                                                <ul class="megamenu">

                                                    <%--三级分类导航--%>
                                                    <c:forEach var="c1" items="${catalog1}">

                                                        <li class="item-vertical style1 with-sub-menu hover">
                                                            <p class="close-menu"></p>
                                                            <a href="#" class="clearfix">

                                                                <span>${c1.name}</span>

                                                            </a>
                                                            <div class="sub-menu" data-subwidth="100"
                                                                 style="width: 900px; display: none; right: 0px;">
                                                                <div class="content" style="display: none;">
                                                                    <div class="row">
                                                                        <div class="col-sm-12">
                                                                            <div class="row">
                                                                                <div class="col-lg-4 col-sm-6 static-menu">
                                                                                    <div class="menu">
                                                                                        <ul>
                                                                                            <c:forEach var="c2"
                                                                                                       items="${catalog2}">
                                                                                                <c:if test="${c2.catalog_1_id==c1.id}">

                                                                                                    <li>
                                                                                                        <a href="javaScript:;"
                                                                                                           class="main-menu">${c2.name}</a>
                                                                                                        <ul>
                                                                                                            <c:forEach
                                                                                                                    var="c3"
                                                                                                                    items="${catalog3}">
                                                                                                                <c:if test="${c3.catalog_2_id==c2.id}">
                                                                                                                    <li>
                                                                                                                        <a href="/category/list?method=category&navi3=${c3.id}">${c3.name}</a>
                                                                                                                    </li>

                                                                                                                </c:if>
                                                                                                            </c:forEach>
                                                                                                        </ul>
                                                                                                    </li>
                                                                                                </c:if>
                                                                                            </c:forEach>
                                                                                        </ul>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </c:forEach>

                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </nav>
                        </div>
                    </div>

                </div>


                <div id="yt_header_right" class="col-sm-12 col-md-9 col-lg-9 ">
                    <div class="slider-container ">
                        <div class="owl-carousel owl-slider-1 owl" data-dots="yes" data-nav="yes" data-loop="yes"
                             data-items_xs="1" data-items_sm="1" data-items_md="1" data-margin="0">
                            <div class="img-slider">
                                <a href="#"><img src="${root}/front/img/demo/slider/slider-1.jpg" alt=""></a>
                            </div>
                            <div class="img-slider">
                                <a href="#"><img src="${root}/front/img/demo/slider/slider-2.jpg" alt=""></a>
                            </div>
                            <div class="img-slider">
                                <a href="#"><img src="${root}/front/img/demo/slider/slider-3.jpg" alt=""></a>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-12 four-block">
                    <div class="modcontent clearfix">
                        <div class="policy-detail">
                            <div class="banner-policy">
                                <div class="policy policy1">
                                    <a href="#">
                                        <span class="ico-policy"></span>
                                        <div class="service-info">
                                            <span class="title">购物返积分</span> <br> <span>购物满49返购物积分</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="policy policy2">
                                    <a href="#">
                                        <span class="ico-policy"></span>
                                        <div class="service-info">
                                            <span class="title">购物无忧</span> <br><span>7 天无理由退换货</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="policy policy3">
                                    <a href="#">
                                        <span class="ico-policy"></span>
                                        <div class="service-info">
                                            <span class="title">24小时发货</span> <br><span>全国24小时内发货</span>
                                        </div>
                                    </a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //Block Spotlight1  -->

    <!-- Main Container  -->
    <div class="main-container container">

        <div class="row">
            <div id="content" class="col-xs-12 col-sm-12">

                <div class="module tab-slider titleLine">
                    <h3 class="modtitle">一周热卖</h3>
                    <hr>
                    <hr>
                    <hr>

                    <div class="owl-carousel owl-dead-week" data-dots="yes" data-nav="yes" data-loop="yes"
                         data-items_xs="1" data-items_sm="2" data-items_md="2" data-margin="15">
                        <div class="product-layout ">
                            <div class="product-item-container">
                                <div class=" left-block col-lg-6 col-md-6 col-sm-12  col-xs-12">
                                    <div class="product-image-container  second_img ">
                                        <a href="${root}/front/product.html" class="product-img"><img
                                                src="${root}/front/img/demo/shop/product/product-1.jpg" alt=""></a>
                                        <!--Sale Label-->
                                        <span class="sale">-20%</span>

                                        <div class="hover">
                                            <ul>
                                                <li class="icon-heart"><a class="wishlist" data-toggle="tooltip"
                                                                          title="" onclick="wishlist.add('42');"
                                                                          data-original-title="Add to Wish List"><i
                                                        class="fa fa-heart"></i></a></li>
                                                <li class="icon-exchange"><a class="compare" data-toggle="tooltip"
                                                                             title="" onclick="compare.add('42');"
                                                                             data-original-title="Compare this Product"><i
                                                        class="fa fa-exchange"></i></a></li>
                                                <li class="icon-search"><a class="quickview iframe-link "
                                                                           data-fancybox-type="iframe"
                                                                           href="${root}/front/quickview.html"> <i
                                                        class="fa fa-search" aria-hidden="true"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="right-block col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                    <div class="time-offer-end">
                                        <div class="title">Hurry Up! Offer ends in:</div>

                                        <div class="time-box">

                                        </div>
                                    </div>
                                    <div class="caption">
                                        <h4><a href="${root}/front/product.html">Dummy product #1</a></h4>
                                        <div class="description item-desc">
                                            <p>Lorem ipsum dolor sit amet, sed diam nonumy eirmod tempor invidunt ut
                                                labore et dolore magna aliquyam erat. </p>
                                        </div>
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class="gray"><i class="fa fa-star "></i></span>
                                            </div>
                                        </div>

                                        <div class="price">
                                            <span class="price-new">$74.00</span>
                                            <span class="price-old">$122.00</span>
                                        </div>

                                    </div>

                                    <div class="button-group">
                                        <button class="addToCart btn btn-default " data-toggle="tooltip" title=""
                                                onclick="cart.add('42', '1');" data-original-title="Add to Cart"><span
                                                class="">Add to Cart</span></button>
                                    </div>
                                </div><!-- right block -->
                            </div>
                        </div>

                        <div class="product-layout ">
                            <div class="product-item-container ">
                                <div class=" left-block col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                    <div class="product-image-container  second_img ">
                                        <a href="${root}/front/product.html" class="product-img"><img
                                                src="${root}/front/img/demo/shop/product/product-2.jpg" alt=""></a>
                                        <!--Sale Label-->
                                        <span class="sale">-15%</span>

                                        <div class="hover">
                                            <ul>
                                                <li class="icon-heart"><a class="wishlist" data-toggle="tooltip"
                                                                          title="" onclick="wishlist.add('42');"
                                                                          data-original-title="Add to Wish List"><i
                                                        class="fa fa-heart"></i></a></li>
                                                <li class="icon-exchange"><a class="compare" data-toggle="tooltip"
                                                                             title="" onclick="compare.add('42');"
                                                                             data-original-title="Compare this Product"><i
                                                        class="fa fa-exchange"></i></a></li>
                                                <li class="icon-search"><a class="quickview iframe-link "
                                                                           data-fancybox-type="iframe"
                                                                           href="${root}/front/quickview.html"> <i
                                                        class="fa fa-search" aria-hidden="true"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="right-block col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                    <div class="time-offer-end">
                                        <div class="title">Hurry Up! Offer ends in:</div>

                                        <div class="time-box time-box-2">

                                        </div>
                                    </div>
                                    <div class="caption">
                                        <h4><a href="${root}/front/product.html">Dummy product #2</a></h4>
                                        <div class="description item-desc">
                                            <p>Lorem ipsum dolor sit amet, sed diam nonumy eirmod tempor invidunt ut
                                                labore et dolore magna aliquyam erat . </p>
                                        </div>
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class="gray"><i class="fa fa-star "></i></span>
                                            </div>
                                        </div>

                                        <div class="price">
                                            <span class="price-new">$87.00</span>
                                            <span class="price-old">$122.00</span>
                                        </div>

                                    </div>

                                    <div class="button-group">
                                        <button class="addToCart btn btn-default " data-toggle="tooltip" title=""
                                                onclick="cart.add('42', '1');" data-original-title="Add to Cart"><span
                                                class="">Add to Cart</span></button>
                                    </div>
                                </div><!-- right block -->
                            </div>
                        </div>

                        <div class="product-layout ">
                            <div class="product-item-container ">
                                <div class=" left-block col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                    <div class="product-image-container  second_img ">
                                        <a href="${root}/front/product.html" class="product-img"><img
                                                src="${root}/front/img/demo/shop/product/product-3.jpg" alt=""></a>
                                        <!--Sale Label-->
                                        <span class="sale">-25%</span>

                                        <div class="hover">
                                            <ul>
                                                <li class="icon-heart"><a class="wishlist" data-toggle="tooltip"
                                                                          title="" onclick="wishlist.add('42');"
                                                                          data-original-title="Add to Wish List"><i
                                                        class="fa fa-heart"></i></a></li>
                                                <li class="icon-exchange"><a class="compare" data-toggle="tooltip"
                                                                             title="" onclick="compare.add('42');"
                                                                             data-original-title="Compare this Product"><i
                                                        class="fa fa-exchange"></i></a></li>
                                                <li class="icon-search"><a class="quickview iframe-link "
                                                                           data-fancybox-type="iframe"
                                                                           href="${root}/front/quickview.html"> <i
                                                        class="fa fa-search" aria-hidden="true"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="right-block col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                    <div class="time-offer-end">
                                        <div class="title">Hurry Up! Offer ends in:</div>

                                        <div class="time-box">
                                            <div class="day-time time">
                                                <div class="num-day num-time">356</div>
                                                <div class="name-day name-time">Days</div>
                                            </div>
                                            <div class="hour-time time">
                                                <div class="num-hour num-time">23</div>
                                                <div class="name-hour name-time">Hours</div>
                                            </div>
                                            <div class="min-time time">
                                                <div class="num-min num-time">56</div>
                                                <div class="name-min name-time">Mins</div>
                                            </div>
                                            <div class="sec-time time">
                                                <div class="num-sec num-time">33</div>
                                                <div class="name-sec name-time">Secs</div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="caption">
                                        <h4><a href="${root}/front/product.html">Dummy product #01</a></h4>
                                        <div class="description item-desc">
                                            <p>Lorem ipsum dolor sit amet, sed diam nonumy eirmod tempor invidunt ut
                                                labore et dolore magna aliquyam erat. </p>
                                        </div>
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class="gray"><i class="fa fa-star "></i></span>
                                            </div>
                                        </div>

                                        <div class="price">
                                            <span class="price-new">$68.00</span>
                                            <span class="price-old">$122.00</span>
                                        </div>

                                    </div>

                                    <div class="button-group">
                                        <button class="addToCart btn btn-default " data-toggle="tooltip" title=""
                                                onclick="cart.add('42', '1');" data-original-title="Add to Cart"><span
                                                class="">Add to Cart</span></button>
                                    </div>
                                </div><!-- right block -->
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="module col-sm-12 hidden-xs">
                <div class="modcontent clearfix">
                    <div class="banner-wraps ">
                        <div class="m-banner ">
                            <div class="banners htmlconten1 row">
                                <div class="banners banner1-1 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <div>
                                        <a href="#"><img src="${root}/front/img/demo/banner/banner1-1.jpg"
                                                         alt="banner1"></a>
                                    </div>
                                </div>
                                <div class=" banners banner1-2 col-sm-6 col-xs-12">
                                    <div>
                                        <a href="#"><img src="${root}/front/img/demo/banner/banner1-2.jpg"
                                                         alt="banner1"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="htmlconten2 row">
                                <div class="banners banner2-1 col-sm-3 col-xs-12">
                                    <div>
                                        <a href="#"><img src="${root}/front/img/demo/banner/banner2-1.jpg"
                                                         alt="banner1"></a>
                                    </div>
                                </div>
                                <div class="banners banner2-2 col-sm-6 col-xs-12">
                                    <div>
                                        <a href="#"><img src="${root}/front/img/demo/banner/banner2-2.jpg"
                                                         alt="banner1"></a>
                                    </div>
                                </div>
                                <div class="banners banner2-3 col-sm-3 col-xs-12">
                                    <div>
                                        <a href="#"><img src="${root}/front/img/demo/banner/banner2-3.jpg"
                                                         alt="banner1"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="smartphone-tablet col-sm-12">
                <h3 class="modtitle">手机平板 </h3>
                <hr>
                <hr>
                <hr>
                <div class="smartphone-tablet-owl">
                    <div class=" owl-carousel related-owl " data-dots="yes" data-nav="yes" data-loop="yes"
                         data-items_xs="1" data-items_sm="3" data-items_md="5" data-margin="10">
                        <div class="product-layout">
                            <div class="product-item-container">
                                <div class="left-block">
                                    <div class="product-image-container  second_img ">
                                        <a href="${root}/front/product.html" class="product-img"><img
                                                src="${root}/front/img/demo/shop/product/product-1.jpg" alt=""></a>
                                        <!--Sale Label-->
                                        <span class="new">New</span>

                                        <div class="hover">
                                            <ul>
                                                <li class="icon-heart"><a class="wishlist" data-toggle="tooltip"
                                                                          title="" onclick="wishlist.add('42');"
                                                                          data-original-title="Add to Wish List"><i
                                                        class="fa fa-heart"></i></a></li>
                                                <li class="icon-exchange"><a class="compare" data-toggle="tooltip"
                                                                             title="" onclick="compare.add('42');"
                                                                             data-original-title="Compare this Product"><i
                                                        class="fa fa-exchange"></i></a></li>
                                                <li class="icon-search"><a class="quickview iframe-link "
                                                                           data-fancybox-type="iframe"
                                                                           href="${root}/front/quickview.html"> <i
                                                        class="fa fa-search" aria-hidden="true"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="right-block">
                                    <div class="caption">
                                        <h4><a href="${root}/front/product.html">Dummy product #02</a></h4>
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class="gray"><i class="fa fa-star "></i></span>
                                            </div>
                                        </div>

                                        <div class="price">
                                            <span class="price-new">$74.00</span>
                                            <span class="price-old">$122.00</span>
                                        </div>
                                        <div class="description item-desc hidden">
                                            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
                                                eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam
                                                voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet
                                                clita kasd gubergren, no sea takimata sanctus est . </p>
                                        </div>
                                    </div>

                                    <div class="button-group">
                                        <button class="addToCart btn btn-default " data-toggle="tooltip" title=""
                                                onclick="cart.add('42', '1');" data-original-title="Add to Cart"><span
                                                class="">Add to Cart</span></button>
                                    </div>
                                </div><!-- right block -->
                            </div>
                        </div>


                        <div class="product-layout">
                            <div class="product-item-container">
                                <div class="left-block">
                                    <div class="product-image-container  second_img ">
                                        <a href="${root}/front/product.html" class="product-img"><img
                                                src="${root}/front/img/demo/shop/product/product-3.jpg" alt=""></a>
                                        <!--Sale Label-->
                                        <span class="new">New</span>

                                        <div class="hover">
                                            <ul>
                                                <li class="icon-heart"><a class="wishlist" data-toggle="tooltip"
                                                                          title="" onclick="wishlist.add('42');"
                                                                          data-original-title="Add to Wish List"><i
                                                        class="fa fa-heart"></i></a></li>
                                                <li class="icon-exchange"><a class="compare" data-toggle="tooltip"
                                                                             title="" onclick="compare.add('42');"
                                                                             data-original-title="Compare this Product"><i
                                                        class="fa fa-exchange"></i></a></li>
                                                <li class="icon-search"><a class="quickview iframe-link "
                                                                           data-fancybox-type="iframe"
                                                                           href="${root}/front/quickview.html"> <i
                                                        class="fa fa-search" aria-hidden="true"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="right-block">
                                    <div class="caption">
                                        <h4><a href="${root}/front/product.html">Dummy product #03</a></h4>
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class="gray"><i class="fa fa-star "></i></span>
                                            </div>
                                        </div>

                                        <div class="price">
                                            <span class="price-new">$74.00</span>
                                            <span class="price-old">$122.00</span>
                                        </div>
                                        <div class="description item-desc hidden">
                                            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
                                                eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam
                                                voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet
                                                clita kasd gubergren, no sea takimata sanctus est . </p>
                                        </div>
                                    </div>

                                    <div class="button-group">
                                        <button class="addToCart btn btn-default " data-toggle="tooltip" title=""
                                                onclick="cart.add('42', '1');" data-original-title="Add to Cart"><span
                                                class="">Add to Cart</span></button>
                                    </div>
                                </div><!-- right block -->
                            </div>
                        </div>


                        <div class="product-layout">
                            <div class="product-item-container">
                                <div class="left-block">
                                    <div class="product-image-container  second_img ">
                                        <a href="${root}/front/product.html" class="product-img"><img
                                                src="${root}/front/img/demo/shop/product/product-2.jpg" alt=""></a>
                                        <!--Sale Label-->
                                        <span class="new">New</span>

                                        <div class="hover">
                                            <ul>
                                                <li class="icon-heart"><a class="wishlist" data-toggle="tooltip"
                                                                          title="" onclick="wishlist.add('42');"
                                                                          data-original-title="Add to Wish List"><i
                                                        class="fa fa-heart"></i></a></li>
                                                <li class="icon-exchange"><a class="compare" data-toggle="tooltip"
                                                                             title="" onclick="compare.add('42');"
                                                                             data-original-title="Compare this Product"><i
                                                        class="fa fa-exchange"></i></a></li>
                                                <li class="icon-search"><a class="quickview iframe-link "
                                                                           data-fancybox-type="iframe"
                                                                           href="${root}/front/quickview.html"> <i
                                                        class="fa fa-search" aria-hidden="true"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="right-block">
                                    <div class="caption">
                                        <h4><a href="${root}/front/product.html">Dummy product #04</a></h4>
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class="gray"><i class="fa fa-star "></i></span>
                                            </div>
                                        </div>

                                        <div class="price">
                                            <span class="price-new">$74.00</span>
                                            <span class="price-old">$122.00</span>
                                        </div>
                                        <div class="description item-desc hidden">
                                            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
                                                eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam
                                                voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet
                                                clita kasd gubergren, no sea takimata sanctus est . </p>
                                        </div>
                                    </div>

                                    <div class="button-group">
                                        <button class="addToCart btn btn-default " data-toggle="tooltip" title=""
                                                onclick="cart.add('42', '1');" data-original-title="Add to Cart"><span
                                                class="">Add to Cart</span></button>
                                    </div>
                                </div><!-- right block -->
                            </div>
                        </div>


                        <div class="product-layout">
                            <div class="product-item-container">
                                <div class="left-block">
                                    <div class="product-image-container  second_img ">
                                        <a href="${root}/front/product.html" class="product-img"><img
                                                src="${root}/front/img/demo/shop/product/product-5.jpg" alt=""></a>
                                        <!--Sale Label-->

                                        <div class="hover">
                                            <ul>
                                                <li class="icon-heart"><a class="wishlist" data-toggle="tooltip"
                                                                          title="" onclick="wishlist.add('42');"
                                                                          data-original-title="Add to Wish List"><i
                                                        class="fa fa-heart"></i></a></li>
                                                <li class="icon-exchange"><a class="compare" data-toggle="tooltip"
                                                                             title="" onclick="compare.add('42');"
                                                                             data-original-title="Compare this Product"><i
                                                        class="fa fa-exchange"></i></a></li>
                                                <li class="icon-search"><a class="quickview iframe-link "
                                                                           data-fancybox-type="iframe"
                                                                           href="${root}/front/quickview.html"> <i
                                                        class="fa fa-search" aria-hidden="true"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="right-block">
                                    <div class="caption">
                                        <h4><a href="${root}/front/product.html">Dummy product #05</a></h4>
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class="gray"><i class="fa fa-star "></i></span>
                                            </div>
                                        </div>

                                        <div class="price">
                                            <span class="price-new">$74.00</span>
                                            <span class="price-old">$122.00</span>
                                        </div>
                                        <div class="description item-desc hidden">
                                            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
                                                eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam
                                                voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet
                                                clita kasd gubergren, no sea takimata sanctus est . </p>
                                        </div>
                                    </div>

                                    <div class="button-group">
                                        <button class="addToCart btn btn-default " data-toggle="tooltip" title=""
                                                onclick="cart.add('42', '1');" data-original-title="Add to Cart"><span
                                                class="">Add to Cart</span></button>
                                    </div>
                                </div><!-- right block -->
                            </div>
                        </div>

                        <div class="product-layout">
                            <div class="product-item-container">
                                <div class="left-block">
                                    <div class="product-image-container  second_img ">
                                        <a href="${root}/front/product.html" class="product-img"><img
                                                src="${root}/front/img/demo/shop/product/product-4.jpg" alt=""></a>
                                        <!--Sale Label-->

                                        <div class="hover">
                                            <ul>
                                                <li class="icon-heart"><a class="wishlist" data-toggle="tooltip"
                                                                          title="" onclick="wishlist.add('42');"
                                                                          data-original-title="Add to Wish List"><i
                                                        class="fa fa-heart"></i></a></li>
                                                <li class="icon-exchange"><a class="compare" data-toggle="tooltip"
                                                                             title="" onclick="compare.add('42');"
                                                                             data-original-title="Compare this Product"><i
                                                        class="fa fa-exchange"></i></a></li>
                                                <li class="icon-search"><a class="quickview iframe-link "
                                                                           data-fancybox-type="iframe"
                                                                           href="${root}/front/quickview.html"> <i
                                                        class="fa fa-search" aria-hidden="true"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="right-block">
                                    <div class="caption">
                                        <h4><a href="${root}/front/product.html">Dummy product #06</a></h4>
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class="gray"><i class="fa fa-star "></i></span>
                                            </div>
                                        </div>

                                        <div class="price">
                                            <span class="price-new">$74.00</span>
                                            <span class="price-old">$122.00</span>
                                        </div>
                                        <div class="description item-desc hidden">
                                            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
                                                eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam
                                                voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet
                                                clita kasd gubergren, no sea takimata sanctus est . </p>
                                        </div>
                                    </div>

                                    <div class="button-group">
                                        <button class="addToCart btn btn-default " data-toggle="tooltip" title=""
                                                onclick="cart.add('42', '1');" data-original-title="Add to Cart"><span
                                                class="">Add to Cart</span></button>
                                    </div>
                                </div><!-- right block -->
                            </div>
                        </div>


                        <div class="product-layout">
                            <div class="product-item-container">
                                <div class="left-block">
                                    <div class="product-image-container  second_img ">
                                        <a href="${root}/front/product.html" class="product-img"><img
                                                src="${root}/front/img/demo/shop/product/product-7.jpg" alt=""></a>
                                        <!--Sale Label-->

                                        <div class="hover">
                                            <ul>
                                                <li class="icon-heart"><a class="wishlist" data-toggle="tooltip"
                                                                          title="" onclick="wishlist.add('42');"
                                                                          data-original-title="Add to Wish List"><i
                                                        class="fa fa-heart"></i></a></li>
                                                <li class="icon-exchange"><a class="compare" data-toggle="tooltip"
                                                                             title="" onclick="compare.add('42');"
                                                                             data-original-title="Compare this Product"><i
                                                        class="fa fa-exchange"></i></a></li>
                                                <li class="icon-search"><a class="quickview iframe-link "
                                                                           data-fancybox-type="iframe"
                                                                           href="quickview.html"> <i
                                                        class="fa fa-search" aria-hidden="true"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="right-block">
                                    <div class="caption">
                                        <h4><a href="${root}/front/product.html">Dummy product #07</a></h4>
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class="gray"><i class="fa fa-star "></i></span>
                                            </div>
                                        </div>

                                        <div class="price">
                                            <span class="price-new">$74.00</span>
                                            <span class="price-old">$122.00</span>
                                        </div>
                                        <div class="description item-desc hidden">
                                            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
                                                eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam
                                                voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet
                                                clita kasd gubergren, no sea takimata sanctus est . </p>
                                        </div>
                                    </div>

                                    <div class="button-group">
                                        <button class="addToCart btn btn-default " data-toggle="tooltip" title=""
                                                onclick="cart.add('42', '1');" data-original-title="Add to Cart"><span
                                                class="">Add to Cart</span></button>
                                    </div>
                                </div><!-- right block -->
                            </div>
                        </div>


                        <div class="product-layout">
                            <div class="product-item-container">
                                <div class="left-block">
                                    <div class="product-image-container  second_img ">
                                        <a href="${root}/front/product.html" class="product-img"><img
                                                src="${root}/front/img/demo/shop/product/product-6.jpg" alt=""></a>
                                        <!--Sale Label-->

                                        <span class="sale">-25%</span>
                                        <div class="hover">
                                            <ul>
                                                <li class="icon-heart"><a class="wishlist" data-toggle="tooltip"
                                                                          title="" onclick="wishlist.add('42');"
                                                                          data-original-title="Add to Wish List"><i
                                                        class="fa fa-heart"></i></a></li>
                                                <li class="icon-exchange"><a class="compare" data-toggle="tooltip"
                                                                             title="" onclick="compare.add('42');"
                                                                             data-original-title="Compare this Product"><i
                                                        class="fa fa-exchange"></i></a></li>
                                                <li class="icon-search"><a class="quickview iframe-link "
                                                                           data-fancybox-type="iframe"
                                                                           href="${root}/front/quickview.html"> <i
                                                        class="fa fa-search" aria-hidden="true"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="right-block">
                                    <div class="caption">
                                        <h4><a href="${root}/front/product.html">Dummy product #08</a></h4>
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class="gray"><i class="fa fa-star "></i></span>
                                            </div>
                                        </div>

                                        <div class="price">
                                            <span class="price-new">$74.00</span>
                                            <span class="price-old">$122.00</span>
                                        </div>
                                        <div class="description item-desc hidden">
                                            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
                                                eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam
                                                voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet
                                                clita kasd gubergren, no sea takimata sanctus est . </p>
                                        </div>
                                    </div>

                                    <div class="button-group">
                                        <button class="addToCart btn btn-default " data-toggle="tooltip" title=""
                                                onclick="cart.add('42', '1');" data-original-title="Add to Cart"><span
                                                class="">Add to Cart</span></button>
                                    </div>
                                </div><!-- right block -->
                            </div>
                        </div>


                        <div class="product-layout">
                            <div class="product-item-container">
                                <div class="left-block">
                                    <div class="product-image-container  second_img ">
                                        <a href="${root}/front/product.html" class="product-img"><img
                                                src="${root}/front/img/demo/shop/product/product-6.jpg" alt=""></a>
                                        <!--Sale Label-->

                                        <span class="sale">-25%</span>
                                        <div class="hover">
                                            <ul>
                                                <li class="icon-heart"><a class="wishlist" data-toggle="tooltip"
                                                                          title="" onclick="wishlist.add('42');"
                                                                          data-original-title="Add to Wish List"><i
                                                        class="fa fa-heart"></i></a></li>
                                                <li class="icon-exchange"><a class="compare" data-toggle="tooltip"
                                                                             title="" onclick="compare.add('42');"
                                                                             data-original-title="Compare this Product"><i
                                                        class="fa fa-exchange"></i></a></li>
                                                <li class="icon-search"><a class="quickview iframe-link "
                                                                           data-fancybox-type="iframe"
                                                                           href="${root}/front/quickview.html"> <i
                                                        class="fa fa-search" aria-hidden="true"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="right-block">
                                    <div class="caption">
                                        <h4><a href="${root}/front/product.html">Dummy product #09</a></h4>
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class="gray"><i class="fa fa-star "></i></span>
                                            </div>
                                        </div>

                                        <div class="price">
                                            <span class="price-new">$74.00</span>
                                            <span class="price-old">$122.00</span>
                                        </div>
                                        <div class="description item-desc hidden">
                                            <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy
                                                eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam
                                                voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet
                                                clita kasd gubergren, no sea takimata sanctus est . </p>
                                        </div>
                                    </div>

                                    <div class="button-group">
                                        <button class="addToCart btn btn-default " data-toggle="tooltip" title=""
                                                onclick="cart.add('42', '1');" data-original-title="Add to Cart"><span
                                                class="">Add to Cart</span></button>
                                    </div>
                                </div><!-- right block -->
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="module no-margin titleLine col-sm-12 latest-blog">
                <h3 class="modtitle">新品推荐</h3>
                <hr>
                <hr>
                <hr>
                <div class="latest-blog-owl">
                    <div class="owl-carousel latest-owl" data-dots="yes" data-nav="yes" data-loop="yes"
                         data-items_xs="1" data-items_sm="3" data-items_md="4" data-margin="10">
                        <div class="itemBlogImg">
                            <div class="article-image ">
                                <div>
                                    <div class="day">
                                        <p>24</p>
                                        <p>Dec</p>
                                    </div>

                                    <a class="popup-gallery" href="${root}/front/blog-detail.html"><img
                                            src="${root}/front/img/demo/blog/blog-1.jpg"
                                            alt="Kire tuma demonstraverunt lector">
                                        <p class="text">Lorem Ipsum is simply dummy text of the printing.</p></a>
                                </div>
                            </div>
                        </div>
                        <div class="itemBlogImg">
                            <div class="article-image ">
                                <div>
                                    <div class="day">
                                        <p>24</p>
                                        <p>Dec</p>
                                    </div>

                                    <a class="popup-gallery" href="${root}/front/blog-detail.html"><img
                                            src="${root}/front/img/demo/blog/blog-2.jpg"
                                            alt="Kire tuma demonstraverunt lector">
                                        <p class="text">Lorem Ipsum is simply dummy text of the printing.</p></a>
                                </div>
                            </div>
                        </div>
                        <div class="itemBlogImg">
                            <div class="article-image ">
                                <div>
                                    <div class="day">
                                        <p>24</p>
                                        <p>Dec</p>
                                    </div>

                                    <a class="popup-gallery" href="${root}/front/blog-detail.html"><img
                                            src="${root}/front/img/demo/blog/blog-3.jpg"
                                            alt="Kire tuma demonstraverunt lector">
                                        <p class="text">Lorem Ipsum is simply dummy text of the printing.</p></a>
                                </div>
                            </div>
                        </div>
                        <div class="itemBlogImg">
                            <div class="article-image ">
                                <div>
                                    <div class="day">
                                        <p>24</p>
                                        <p>Dec</p>
                                    </div>

                                    <a class="popup-gallery" href="${root}/front/blog-detail.html"><img
                                            src="${root}/front/img/demo/blog/blog-4.jpg"
                                            alt="Kire tuma demonstraverunt lector">
                                        <p class="text">Lorem Ipsum is simply dummy text of the printing.</p></a>
                                </div>
                            </div>
                        </div>
                        <div class="itemBlogImg">
                            <div class="article-image ">
                                <div>
                                    <div class="day">
                                        <p>24</p>
                                        <p>Dec</p>
                                    </div>

                                    <a class="popup-gallery" href="${root}/front/blog-detail.html"><img
                                            src="${root}/front/img/demo/blog/blog-5.jpg"
                                            alt="Kire tuma demonstraverunt lector">
                                        <p class="text">Lorem Ipsum is simply dummy text of the printing.</p></a>
                                </div>
                            </div>
                        </div>
                        <div class="itemBlogImg">
                            <div class="article-image ">
                                <div>
                                    <div class="day">
                                        <p>24</p>
                                        <p>Dec</p>
                                    </div>

                                    <a class="popup-gallery" href="${root}/front/blog-detail.html"><img
                                            src="${root}/front/img/demo/blog/blog-6.jpg"
                                            alt="Kire tuma demonstraverunt lector">
                                        <p class="text">Lorem Ipsum is simply dummy text of the printing.</p></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- //Main Container -->
<!-- Block Spotlight3  -->
<section class="so-spotlight3">
    <div class="container">
        <div class="row">
            <div id="so_categories_173761471880018"
                 class="so-categories module titleLine preset01-4 preset02-3 preset03-3 preset04-1 preset05-1">
                <div class="wrap-categories">
                    <div class="col-xs-12 col-sm-6  col-md-3 col-lg-3 new-arrivals ">
                        <div class="module latest-product titleLine">
                            <h3 class="modtitle">新品</h3>
                            <hr>
                            <hr>
                            <hr>
                            <div class="modcontent owl-carousel owl-new-arrivals " data-dots="yes" data-nav="yes"
                                 data-loop="yes" data-items_xs="1" data-items_sm="1" data-items_md="1" data-margin="10">
                                <div class="product-latest-item">
                                    <div class="media">
                                        <div class="media-left">
                                            <a href="${root}/front/product.html"><img
                                                    src="${root}/front/img/demo/shop/product/product-2.jpg"
                                                    alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                    style="width: 78px; height: 104px;"></a>
                                        </div>
                                        <div class="media-body">
                                            <div class="caption">
                                                <h4><a href="${root}/front/product.html">Sunt Molup</a></h4>


                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                    </div>
                                                </div>
                                                <div class="price">
                                                    <span class="price-new">$100.00</span>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="media">
                                        <div class="media-left">
                                            <a href="${root}/front/product.html"><img
                                                    src="${root}/front/img/demo/shop/product/product-3.jpg"
                                                    alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                    style="width: 78px; height: 104px;"></a>
                                        </div>
                                        <div class="media-body">
                                            <div class="caption">
                                                <h4><a href="${root}/front/product.html">Et Spare</a></h4>


                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class="gray"><i class="fa fa-star "></i></span>
                                                    </div>
                                                </div>
                                                <div class="price">
                                                    <span class="price-new">$36.00</span>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="media">
                                        <div class="media-left">
                                            <a href="${root}/front/product.html"><img
                                                    src="${root}/front/img/demo/shop/product/product-4.jpg"
                                                    alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                    style="width: 78px; height: 104px;"></a>
                                        </div>
                                        <div class="media-body">
                                            <div class="caption">
                                                <h4><a href="${root}/front/product.html">Cisi Chicken</a></h4>


                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class="gray"><i class="fa fa-star"></i></span>
                                                    </div>
                                                </div>
                                                <div class="price">
                                                    <span class="price-new">$71.00</span>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="product-latest-item">
                                    <div class="media">
                                        <div class="media-left">
                                            <a href="${root}/front/product.html"><img
                                                    src="${root}/front/img/demo/shop/product/product-5.jpg"
                                                    alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                    style="width: 78px; height: 104px;"></a>
                                        </div>
                                        <div class="media-body">
                                            <div class="caption">
                                                <h4><a href="${root}/front/product.html">Sunt Molup</a></h4>


                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                    </div>
                                                </div>
                                                <div class="price">
                                                    <span class="price-new">$126.00</span>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="media">
                                        <div class="media-left">
                                            <a href="${root}/front/product.html"><img
                                                    src="${root}/front/img/demo/shop/product/product-6.jpg"
                                                    alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                    style="width: 78px; height: 104px;"></a>
                                        </div>
                                        <div class="media-body">
                                            <div class="caption">
                                                <h4><a href="${root}/front/product.html">Et Spare</a></h4>


                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class="gray"><i class="fa fa-star "></i></span>
                                                    </div>
                                                </div>
                                                <div class="price">
                                                    <span class="price-new">$65.00</span>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="media">
                                        <div class="media-left">
                                            <a href="${root}/front/product.html"><img
                                                    src="${root}/front/img/demo/shop/product/product-7.jpg"
                                                    alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                    style="width: 78px; height: 104px;"></a>
                                        </div>
                                        <div class="media-body">
                                            <div class="caption">
                                                <h4><a href="${root}/front/product.html">Cisi Chicken</a></h4>


                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class="gray"><i class="fa fa-star"></i></span>
                                                    </div>
                                                </div>
                                                <div class="price">
                                                    <span class="price-new">$68.00</span>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="product-latest-item">
                                    <div class="media">
                                        <div class="media-left">
                                            <a href="product.html"><img
                                                    src="${root}/front/img/demo/shop/product/product-8.jpg"
                                                    alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                    style="width: 78px; height: 104px;"></a>
                                        </div>
                                        <div class="media-body">
                                            <div class="caption">
                                                <h4><a href="${root}/front/product.html">Sunt Molup</a></h4>


                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                    </div>
                                                </div>
                                                <div class="price">
                                                    <span class="price-new">$130.00</span>
                                                    <span class="price-old">$165.00</span>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="media">
                                        <div class="media-left">
                                            <a href="${root}/front/product.html"><img
                                                    src="${root}/front/img/demo/shop/product/product-1.jpg"
                                                    alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                    style="width: 78px; height: 104px;"></a>
                                        </div>
                                        <div class="media-body">
                                            <div class="caption">
                                                <h4><a href="${root}/front/product.html">Et Spare</a></h4>


                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class="gray"><i class="fa fa-star "></i></span>
                                                    </div>
                                                </div>
                                                <div class="price">
                                                    <span class="price-new">$69.00</span>
                                                    <span class="price-old">$89.00</span>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="media">
                                        <div class="media-left">
                                            <a href="${root}/front/product.html"><img
                                                    src="${root}/front/img/demo/shop/product/product-2.jpg"
                                                    alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                    style="width: 78px; height: 104px;"></a>
                                        </div>
                                        <div class="media-body">
                                            <div class="caption">
                                                <h4><a href="${root}/front/product.html">Cisi Chicken</a></h4>


                                                <div class="ratings">
                                                    <div class="rating-box">
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class=""><i class="fa fa-star "></i></span>
                                                        <span class="gray"><i class="fa fa-star"></i></span>
                                                    </div>
                                                </div>
                                                <div class="price">
                                                    <span class="price-new">$96.00</span>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 bestsellers">
                        <div class="module latest-product titleLine">
                            <h3 class="modtitle">销量冠军</h3>
                            <hr>
                            <hr>
                            <hr>
                            <div class="modcontent">
                                <div class="owl-carousel owl-bestsellers" data-nav="yes" data-loop="yes" data-margin="0"
                                     data-items_xs="1" data-items_sm="1" data-items_md="1">
                                    <div class="product-latest-item">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="${root}/front/product.html"><img
                                                        src="${root}/front/img/demo/shop/product/product-3.jpg"
                                                        alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                        style="width: 78px; height: 104px;"></a>
                                            </div>
                                            <div class="media-body">
                                                <div class="caption">
                                                    <h4><a href="${root}/front/product.html">Sunt Molup</a></h4>


                                                    <div class="ratings">
                                                        <div class="rating-box">
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                        </div>
                                                    </div>
                                                    <div class="price">
                                                        <span class="price-new">$98.00</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                        <div class="media">
                                            <div class="media-left">
                                                <a href="${root}/front/product.html"><img
                                                        src="${root}/front/img/demo/shop/product/product-1.jpg"
                                                        alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                        style="width: 78px; height: 104px;"></a>
                                            </div>
                                            <div class="media-body">
                                                <div class="caption">
                                                    <h4><a href="${root}/front/product.html">Et Spare</a></h4>


                                                    <div class="ratings">
                                                        <div class="rating-box">
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class="gray"><i class="fa fa-star "></i></span>
                                                        </div>
                                                    </div>
                                                    <div class="price">
                                                        <span class="price-new">$165.00</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                        <div class="media">
                                            <div class="media-left">
                                                <a href="${root}/front/product.html"><img
                                                        src="${root}/front/img/demo/shop/product/product-2.jpg"
                                                        alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                        style="width: 78px; height: 104px;"></a>
                                            </div>
                                            <div class="media-body">
                                                <div class="caption">
                                                    <h4><a href="${root}/front/product.html">Cisi Chicken</a></h4>


                                                    <div class="ratings">
                                                        <div class="rating-box">
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class="gray"><i class="fa fa-star"></i></span>
                                                        </div>
                                                    </div>
                                                    <div class="price">
                                                        <span class="price-new">$59.00</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-latest-item">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="${root}/front/product.html"><img
                                                        src="${root}/front/img/demo/shop/product/product-3.jpg"
                                                        alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                        style="width: 78px; height: 104px;"></a>
                                            </div>
                                            <div class="media-body">
                                                <div class="caption">
                                                    <h4><a href="${root}/front/product.html">Sunt Molup</a></h4>


                                                    <div class="ratings">
                                                        <div class="rating-box">
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                        </div>
                                                    </div>
                                                    <div class="price">
                                                        <span class="price-new">$98.00</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                        <div class="media">
                                            <div class="media-left">
                                                <a href="${root}/front/product.html"><img
                                                        src="${root}/front/img/demo/shop/product/product-1.jpg"
                                                        alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                        style="width: 78px; height: 104px;"></a>
                                            </div>
                                            <div class="media-body">
                                                <div class="caption">
                                                    <h4><a href="${root}/front/product.html">Et Spare</a></h4>


                                                    <div class="ratings">
                                                        <div class="rating-box">
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class="gray"><i class="fa fa-star "></i></span>
                                                        </div>
                                                    </div>
                                                    <div class="price">
                                                        <span class="price-new">$165.00</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                        <div class="media">
                                            <div class="media-left">
                                                <a href="${root}/front/product.html"><img
                                                        src="${root}/front/img/demo/shop/product/product-2.jpg"
                                                        alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                        style="width: 78px; height: 104px;"></a>
                                            </div>
                                            <div class="media-body">
                                                <div class="caption">
                                                    <h4><a href="${root}/front/product.html">Cisi Chicken</a></h4>


                                                    <div class="ratings">
                                                        <div class="rating-box">
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class="gray"><i class="fa fa-star"></i></span>
                                                        </div>
                                                    </div>
                                                    <div class="price">
                                                        <span class="price-new">$59.00</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 featured">
                        <div class="module latest-product titleLine">
                            <h3 class="modtitle">特供</h3>
                            <hr>
                            <hr>
                            <hr>
                            <div class="modcontent">
                                <div class="owl-carousel owl-featured" data-nav="yes" data-loop="yes" data-margin="0"
                                     data-items_xs="1" data-items_sm="1" data-items_md="1">
                                    <div class="product-latest-item">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="${root}/front/product.html"><img
                                                        src="${root}/front/img/demo/shop/product/product-3.jpg"
                                                        alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                        style="width: 78px; height: 104px;"></a>
                                            </div>
                                            <div class="media-body">
                                                <div class="caption">
                                                    <h4><a href="${root}/front/product.html">Sunt Molup</a></h4>


                                                    <div class="ratings">
                                                        <div class="rating-box">
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                        </div>
                                                    </div>
                                                    <div class="price">
                                                        <span class="price-new">$78.00</span>
                                                        <span class="price-old">$105.00</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                        <div class="media">
                                            <div class="media-left">
                                                <a href="${root}/front/product.html"><img
                                                        src="${root}/front/img/demo/shop/product/product-4.jpg"
                                                        alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                        style="width: 78px; height: 104px;"></a>
                                            </div>
                                            <div class="media-body">
                                                <div class="caption">
                                                    <h4><a href="${root}/front/product.html">Et Spare</a></h4>


                                                    <div class="ratings">
                                                        <div class="rating-box">
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class="gray"><i class="fa fa-star "></i></span>
                                                        </div>
                                                    </div>
                                                    <div class="price">
                                                        <span class="price-new">$145.00</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                        <div class="media">
                                            <div class="media-left">
                                                <a href="${root}/front/product.html"><img
                                                        src="${root}/front/img/demo/shop/product/product-5.jpg"
                                                        alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                        style="width: 78px; height: 104px;"></a>
                                            </div>
                                            <div class="media-body">
                                                <div class="caption">
                                                    <h4><a href="${root}/front/product.html">Cisi Chicken</a></h4>


                                                    <div class="ratings">
                                                        <div class="rating-box">
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class="gray"><i class="fa fa-star"></i></span>
                                                        </div>
                                                    </div>
                                                    <div class="price">
                                                        <span class="price-new">$72.00</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-latest-item">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="${root}/front/product.html"><img
                                                        src="${root}/front/img/demo/shop/product/product-3.jpg"
                                                        alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                        style="width: 78px; height: 104px;"></a>
                                            </div>
                                            <div class="media-body">
                                                <div class="caption">
                                                    <h4><a href="${root}/front/product.html">Sunt Molup</a></h4>


                                                    <div class="ratings">
                                                        <div class="rating-box">
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                        </div>
                                                    </div>
                                                    <div class="price">
                                                        <span class="price-new">$78.00</span>
                                                        <span class="price-old">$105.00</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                        <div class="media">
                                            <div class="media-left">
                                                <a href="${root}/front/product.html"><img
                                                        src="${root}/front/img/demo/shop/product/product-4.jpg"
                                                        alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                        style="width: 78px; height: 104px;"></a>
                                            </div>
                                            <div class="media-body">
                                                <div class="caption">
                                                    <h4><a href="${root}/front/product.html">Et Spare</a></h4>


                                                    <div class="ratings">
                                                        <div class="rating-box">
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class="gray"><i class="fa fa-star "></i></span>
                                                        </div>
                                                    </div>
                                                    <div class="price">
                                                        <span class="price-new">$145.00</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                        <div class="media">
                                            <div class="media-left">
                                                <a href="${root}/front/product.html"><img
                                                        src="${root}/front/img/demo/shop/product/product-5.jpg"
                                                        alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                        style="width: 78px; height: 104px;"></a>
                                            </div>
                                            <div class="media-body">
                                                <div class="caption">
                                                    <h4><a href="${root}/front/product.html">Cisi Chicken</a></h4>


                                                    <div class="ratings">
                                                        <div class="rating-box">
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class="gray"><i class="fa fa-star"></i></span>
                                                        </div>
                                                    </div>
                                                    <div class="price">
                                                        <span class="price-new">$72.00</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 hot-sale">
                        <div class="module latest-product titleLine">
                            <h3 class="modtitle">热卖</h3>
                            <hr>
                            <hr>
                            <hr>
                            <div class="modcontent">
                                <div class="owl-carousel owl-hot-sale" data-nav="yes" data-loop="yes" data-margin="0"
                                     data-items_xs="1" data-items_sm="1" data-items_md="1">
                                    <div class="product-latest-item">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="${root}/front/product.html"><img
                                                        src="${root}/front/img/demo/shop/product/product-6.jpg"
                                                        alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                        style="width: 78px; height: 104px;"></a>
                                            </div>
                                            <div class="media-body">
                                                <div class="caption">
                                                    <h4><a href="${root}/front/product.html">Sunt Molup</a></h4>


                                                    <div class="ratings">
                                                        <div class="rating-box">
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                        </div>
                                                    </div>
                                                    <div class="price">
                                                        <span class="price-new">$132.00</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                        <div class="media">
                                            <div class="media-left">
                                                <a href="${root}/front/product.html"><img
                                                        src="${root}/front/img/demo/shop/product/product-7.jpg"
                                                        alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                        style="width: 78px; height: 104px;"></a>
                                            </div>
                                            <div class="media-body">
                                                <div class="caption">
                                                    <h4><a href="${root}/front/product.html">Et Spare</a></h4>


                                                    <div class="ratings">
                                                        <div class="rating-box">
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class="gray"><i class="fa fa-star "></i></span>
                                                        </div>
                                                    </div>
                                                    <div class="price">
                                                        <span class="price-new">$87.00</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                        <div class="media">
                                            <div class="media-left">
                                                <a href="${root}/front/product.html"><img
                                                        src="${root}/front/img/demo/shop/product/product-8.jpg"
                                                        alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                        style="width: 78px; height: 104px;"></a>
                                            </div>
                                            <div class="media-body">
                                                <div class="caption">
                                                    <h4><a href="${root}/front/product.html">Cisi Chicken</a></h4>


                                                    <div class="ratings">
                                                        <div class="rating-box">
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class="gray"><i class="fa fa-star"></i></span>
                                                        </div>
                                                    </div>
                                                    <div class="price">
                                                        <span class="price-new">$63.00</span>
                                                        <span class="price-old">$84.00</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-latest-item">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="${root}/front/product.html"><img
                                                        src="${root}/front/img/demo/shop/product/product-6.jpg"
                                                        alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                        style="width: 78px; height: 104px;"></a>
                                            </div>
                                            <div class="media-body">
                                                <div class="caption">
                                                    <h4><a href="${root}/front/product.html">Sunt Molup</a></h4>


                                                    <div class="ratings">
                                                        <div class="rating-box">
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                        </div>
                                                    </div>
                                                    <div class="price">
                                                        <span class="price-new">$132.00</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                        <div class="media">
                                            <div class="media-left">
                                                <a href="${root}/front/product.html"><img
                                                        src="${root}/front/img/demo/shop/product/product-7.jpg"
                                                        alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                        style="width: 78px; height: 104px;"></a>
                                            </div>
                                            <div class="media-body">
                                                <div class="caption">
                                                    <h4><a href="${root}/front/product.html">Et Spare</a></h4>


                                                    <div class="ratings">
                                                        <div class="rating-box">
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class="gray"><i class="fa fa-star "></i></span>
                                                        </div>
                                                    </div>
                                                    <div class="price">
                                                        <span class="price-new">$87.00</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                        <div class="media">
                                            <div class="media-left">
                                                <a href="${root}/front/product.html"><img
                                                        src="${root}/front/img/demo/shop/product/product-8.jpg"
                                                        alt="Cisi Chicken" title="Cisi Chicken" class="img-responsive"
                                                        style="width: 78px; height: 104px;"></a>
                                            </div>
                                            <div class="media-body">
                                                <div class="caption">
                                                    <h4><a href="${root}/front/product.html">Cisi Chicken</a></h4>


                                                    <div class="ratings">
                                                        <div class="rating-box">
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class=""><i class="fa fa-star "></i></span>
                                                            <span class="gray"><i class="fa fa-star"></i></span>
                                                        </div>
                                                    </div>
                                                    <div class="price">
                                                        <span class="price-new">$63.00</span>
                                                        <span class="price-old">$84.00</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--暂时不使用登录窗口，内容改好了再打开使用--%>
                <%--<div id="container-module-newletter" class="hidden-md hidden-sm hidden-xs">--%>
                <%--<div class="so_newletter_custom_popup_bg popup_bg"></div>--%>
                <%--<div class="module main-newsleter-popup so_newletter_custom_popup so_newletter_oca_popup" id="so_newletter_custom_popup"> <div class="so-custom-popup so-custom-oca-popup" style="width: 850px; background: url('img/demo/cms/newletter-bg.jpg') no-repeat white;  ">--%>
                <%--<div class="modcontent">--%>
                <%--<div class="oca_popup" id="test-popup"> <div class="popup-content"> <p class="newsletter_promo">每日促销</p>--%>
                <%--<div class="popup-title">订阅更多信息					</div>--%>
                <%--<form method="post" name="signup" class="form-group signup">--%>
                <%--<div class="input-control"> <div class="email"> <input type="email" placeholder="你的邮件地址..." value="" class="form-control" id="txtemail" name="txtemail"> </div> <button class="btn btn-default" type="submit" onclick="return subscribe_newsletter();" name="submit">信息订阅	</button> </div>--%>
                <%--</form>--%>
                <%--<label class="hidden-popup"> <input type="checkbox" value="1" name="hidden-popup"> <span class="inline">&nbsp;&nbsp;关闭此窗口后不再显示</span> </label> </div>--%>
                <%--</div>--%>
                <%--</div> <!--/.modcontent-->--%>
                <%--<button title="Close"   class="popup-close">×</button> </div>--%>
                <%--</div>--%>
                <%--</div>--%>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="brands">
                    <h3>合作品牌</h3>
                    <hr>
                    <hr>
                    <hr>
                    <div class="owl-carousel owl-fetured-brand" data-dots="yes" data-nav="yes" data-loop="yes"
                         data-items_xs="2" data-items_sm="4" data-items_md="6" data-margin="10">
                        <div class="img-brand">
                            <a href="#"><img src="${root}/front/img/demo/brands/brand-1.jpg" alt=""></a>
                        </div>
                        <div class="img-brand">
                            <a href="#"><img src="${root}/front/img/demo/brands/brand-2.jpg" alt=""></a>
                        </div>
                        <div class="img-brand">
                            <a href="#"><img src="${root}/front/img/demo/brands/brand-3.jpg" alt=""></a>
                        </div>
                        <div class="img-brand">
                            <a href="#"><img src="${root}/front/img/demo/brands/brand-4.jpg" alt=""></a>
                        </div>
                        <div class="img-brand">
                            <a href="#"><img src="${root}/front/img/demo/brands/brand-5.jpg" alt=""></a>
                        </div>
                        <div class="img-brand">
                            <a href="#"><img src="${root}/front/img/demo/brands/brand-6.jpg" alt=""></a>
                        </div>
                        <div class="img-brand">
                            <a href="#"><img src="${root}/front/img/demo/brands/brand-1.jpg" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- //Block Spotlight3  -->
<script type="text/javascript"><!--
var $typeheader = 'header-home1';
//-->
</script>

<!-- Footer Container -->

<!-- /Footer Top Container -->
<%@include file="/front/down.jsp" %>
<!-- //end Footer Container -->


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
<script type="text/javascript" src="${root}/front/js/modernizr/modernizr-2.6.2.min.js"></script>
<!-- <script type="text/javascript" src="${root}/front/js/bootstrap-notify.min.js"></script> -->

<!-- Theme files
	============================================ -->
<script type="text/javascript" src="${root}/front/js/themejs/application.js"></script>
<script type="text/javascript" src="${root}/front/js/themejs/homepage.js"></script>
<!-- <script type="text/javascript" src="${root}/front/js/themejs/toppanel.js"></script> -->
<script type="text/javascript" src="${root}/front/js/themejs/so_megamenu.js"></script>
<script type="text/javascript" src="${root}/front/js/themejs/addtocart.js"></script>
<script type="text/javascript" src="${root}/front/js/themejs/pathLoader.js"></script>
<%--自己加的文件--%>


</body>
</html>
