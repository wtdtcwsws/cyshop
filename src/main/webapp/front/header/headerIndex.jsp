<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/20
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!-- Header Container  -->
<header id="header" class=" variantleft type_1">
    <!-- Header Top -->
    <div class="header-top">
        <div class="container">
            <div class="row">
                <div class="header-top-left form-inline col-sm-6 col-xs-6 compact-hidden">
                    <%--<div class="form-group currencies-block">--%>
                    <%--<form action="index.html" method="post" enctype="multipart/form-data" id="currency">--%>
                    <%--<a class="btn btn-xs dropdown-toggle" data-toggle="dropdown">--%>
                    <%--<span class="icon icon-credit "></span> USD <span class="fa fa-angle-down"></span>--%>
                    <%--</a>--%>
                    <%--<ul class="dropdown-menu btn-xs">--%>
                    <%--<li> <a href="#">(€)&nbsp;Euro</a></li>--%>
                    <%--<li> <a href="#">(£)&nbsp;Pounds</a></li>--%>
                    <%--<li> <a href="#">($)&nbsp;USD</a></li>--%>
                    <%--</ul>--%>
                    <%--</form>--%>
                    <%--</div>--%>
                    <%--<div class="form-group languages-block ">--%>
                    <%--<form action="index.html" method="post" enctype="multipart/form-data" id="bt-language">--%>
                    <%--<a class="btn btn-xs dropdown-toggle" data-toggle="dropdown">--%>
                    <%--<img src="${root}/front/img/demo/flags/gb.png" alt="English" title="English">--%>
                    <%--<span class="hidden-xs">English</span>--%>
                    <%--<span class="fa fa-angle-down"></span>--%>
                    <%--</a>--%>
                    <%--<ul class="dropdown-menu" >--%>
                    <%--<li><a href="${root}/front/index.html">中文  </a></li>--%>
                    <%--<li> <a href="${root}/front/html_width_RTL/index.html">English </a> </li>--%>
                    <%--</ul>--%>
                    <%--</form>--%>
                    <%--</div>--%>
                </div>
                <div class="header-top-right collapsed-block text-right  col-sm-6 col-xs-6 compact-hidden">
                    <div class="tabBlock1" id="TabBlock-1">
                        <ul class="top-link list-inline">
                            <li class="wishlist hidden-xs"><a href="#" id="wishlist-total" class="top-link-wishlist" title="Welcome Customer!"><span>欢迎光临!</span></a></li>
                            <li class="signin"><a href="${root}/front/login.html" class="top-link-checkout" title="Sign In"><span>登录</span></a></li>
                            <li class="register"><a href="${root}/front/register.html" title="Register"><span>注册</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //Header Top -->

    <!-- Header center -->
    <div class="header-center left">
        <div class="container">
            <div class="row">
                <!-- Logo -->
                <div class="navbar-logo col-md-3 col-sm-12 col-xs-7">
                    <a href="${root}/front/index.html"><img src="${root}/front/img/demo/logo/logo.png" title="Your Store" alt="Your Store"></a>
                </div>
                <!-- //end Logo -->

                <!-- Search -->
                <div id="sosearchpro" class="col-xs-12 col-sm-8 col-md-5 search-pro">

                    <form method="GET" action="index.html">
                        <div id="search0" class="search input-group">
                            <input class="autosearch-input form-control" type="text" value="" size="50" autocomplete="off" placeholder="搜索商品..." name="search">
                            <span class="input-group-btn">
										<button type="submit" class="button-search btn btn-primary" name="submit_search"><i class="fa fa-search"></i></button>
									</span>
                        </div>

                    </form>

                </div>
                <!-- //end Search -->

                <!-- Secondary menu -->
                <div class="col-md-4 col-sm-4 col-xs-5 shopping_cart pull-right">
                    <div class="header-text hidden-xs">
                        <p><i class="fa fa-phone" aria-hidden="true"></i>	   商城电话: (028) 123456789</p>
                    </div>
                    <!--cart-->
                    <div id="cart" class=" btn-group btn-shopping-cart">
                        <a data-loading-text="Loading..." class="top_cart dropdown-toggle" data-toggle="dropdown">
                            <div class="shopcart">
                                <span class="handle pull-left"></span>
                                <span class="number-shopping-cart">2</span>
                                <span class="title">购物车</span>
                                <p class="text-shopping-cart cart-total-full"> $0.00 </p>
                            </div>
                        </a>

                        <ul class="tab-content content dropdown-menu pull-right shoppingcart-box" role="menu">

                            <li>
                                <table class="table table-striped">
                                    <tbody>
                                    <tr>
                                        <td class="text-center" style="width:70px">
                                            <a href="${root}/front/product.html"> <img src="${root}/front/img/demo/shop/product/35.jpg" style="width:70px" alt="Filet Mign" title="Filet Mign" class="preview"> </a>
                                        </td>
                                        <td class="text-left"> <a class="cart_product_name" href="${root}/front/product.html">Filet Mign</a> </td>
                                        <td class="text-center"> x1 </td>
                                        <td class="text-center"> $1,202.00 </td>
                                        <td class="text-right">
                                            <a href="${root}/front/product.html" class="fa fa-edit"></a>
                                        </td>
                                        <td class="text-right">
                                            <a onclick="cart.remove('2');" class="fa fa-times fa-delete"></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center" style="width:70px">
                                            <a href="${root}/front/product.html"> <img src="${root}/front/img/demo/shop/product/141.jpg" style="width:70px" alt="Canon EOS 5D" title="Canon EOS 5D" class="preview"> </a>
                                        </td>
                                        <td class="text-left"> <a class="cart_product_name" href="${root}/front/product.html">Canon EOS 5D</a> </td>
                                        <td class="text-center"> x1 </td>
                                        <td class="text-center"> $60.00 </td>
                                        <td class="text-right">
                                            <a href="${root}/front/product.html" class="fa fa-edit"></a>
                                        </td>
                                        <td class="text-right">
                                            <a onclick="cart.remove('1');" class="fa fa-times fa-delete"></a>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </li>
                            <li>
                                <div>
                                    <table class="table table-bordered">
                                        <tbody>
                                        <tr>
                                            <td class="text-left"><strong>Sub-Total</strong>
                                            </td>
                                            <td class="text-right">$1,060.00</td>
                                        </tr>
                                        <tr>
                                            <td class="text-left"><strong>Eco Tax (-2.00)</strong>
                                            </td>
                                            <td class="text-right">$2.00</td>
                                        </tr>
                                        <tr>
                                            <td class="text-left"><strong>VAT (20%)</strong>
                                            </td>
                                            <td class="text-right">$200.00</td>
                                        </tr>
                                        <tr>
                                            <td class="text-left"><strong>Total</strong>
                                            </td>
                                            <td class="text-right">$1,262.00</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <p class="text-right"> <a class="btn view-cart" href="${root}/front/cart.html"><i class="fa fa-shopping-cart"></i>View Cart</a>&nbsp;&nbsp;&nbsp; <a class="btn btn-mega checkout-cart" href="checkout.html"><i class="fa fa-share"></i>Checkout</a> </p>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!--//cart-->
                </div>
            </div>

        </div>
    </div>
    <!-- //Header center -->

    <!-- Header Bottom -->
    <div class="header-bottom">
        <div class="container">
            <div class="row">


                <!-- Main menu -->
                <div class="megamenu-hori header-bottom-right  col-md-12 col-sm-12 col-xs-12 ">
                    <div class="responsive so-megamenu ">
                        <nav class="navbar-default">
                            <div class=" container-megamenu  horizontal">

                                <div class="navbar-header">
                                    <button   id="show-megamenu" data-toggle="collapse" class="navbar-toggle">
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                </div>

                                <div class="megamenu-wrapper">
                                    <span id="remove-megamenu" class="fa fa-times"></span>
                                    <div class="megamenu-pattern">
                                        <div class="container">
                                            <ul class="megamenu " data-transition="slide" data-animationtime="250">
                                                <li class="home hover">
                                                    <p class="close-menu"></p>
                                                    <a href="#" class="menu1">主页</a>
                                                    <div class="sub-menu" style="width: 100%; display: none;">
                                                        <div class="content" style="display: none;">
                                                            <div class="row">
                                                                <div class="col-md-3">
                                                                    <a href="${root}/front/index.html" class="image-link">
																				<span class="thumbnail">
																					<img class="img-responsive img-border" src="${root}/front/img/demo/feature/home-1.jpg" alt="">
																					<span class="btn btn-default">Read More</span>
																				</span>
                                                                        <h3 class="figcaption">Home page - (Default)</h3>
                                                                    </a>

                                                                </div>
                                                                <div class="col-md-3">
                                                                    <a href="${root}/front/home2.html" class="image-link">
																				<span class="thumbnail">
																					<img class="img-responsive img-border" src="${root}/front/img/demo/feature/home-2.jpg" alt="">
																					<span class="btn btn-default">Read More</span>
																				</span>
                                                                        <h3 class="figcaption">Home page - Layout 2</h3>
                                                                    </a>

                                                                </div>
                                                                <div class="col-md-3">
                                                                    <a href="${root}/front/home3.html" class="image-link">
																				<span class="thumbnail">
																					<img class="img-responsive img-border" src="${root}/front/img/demo/feature/home-3.jpg" alt="">
																					<span class="btn btn-default">Read More</span>
																				</span>
                                                                        <h3 class="figcaption">Home page - Layout 3</h3>
                                                                    </a>

                                                                </div>
                                                                <div class="col-md-3">
                                                                    <a href="${root}/front/home4.html" class="image-link">
																				<span class="thumbnail">
																					<img class="img-responsive img-border" src="${root}/front/img/demo/feature/home-4.jpg" alt="">
																					<span class="btn btn-default">Read More</span>
																				</span>
                                                                        <h3 class="figcaption">Home page - Layout 4</h3>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-3">
                                                                    <a href="${root}/front/home5.html" class="image-link">
																				<span class="thumbnail">
																					<img class="img-responsive img-border" src="${root}/front/img/demo/feature/home-5.jpg" alt="">
																					<span class="btn btn-default">Read More</span>
																				</span>
                                                                        <h3 class="figcaption">Home page - Layout 5</h3>
                                                                    </a>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <a href="${root}/front/home6.html" class="image-link">
																				<span class="thumbnail">
																					<img class="img-responsive img-border" src="${root}/front/img/demo/feature/home-6.jpg" alt="">
																					<span class="btn btn-default">Read More</span>
																				</span>
                                                                        <h3 class="figcaption">Home page - Layout 6</h3>
                                                                    </a>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <a href="${root}/front/home7.html" class="image-link">
																				<span class="thumbnail">
																					<img class="img-responsive img-border" src="${root}/front/img/demo/feature/home-7.jpg" alt="">
																					<span class="btn btn-default">Read More</span>
																				</span>
                                                                        <h3 class="figcaption">Home page - Layout 7</h3>
                                                                    </a>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <a href="${root}/front/home8.html" class="image-link">
																				<span class="thumbnail">
																					<img class="img-responsive img-border" src="${root}/front/img/demo/feature/home-8.jpg" alt="">
																					<span class="btn btn-default">Read More</span>
																				</span>
                                                                        <h3 class="figcaption">Home page - Layout 8</h3>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-3">
                                                                    <a href="${root}/front/home9.html" class="image-link">
																				<span class="thumbnail">
																					<img class="img-responsive img-border" src="${root}/front/img/demo/feature/home-9.jpg" alt="">
																					<span class="btn btn-default">Read More</span>
																				</span>
                                                                        <h3 class="figcaption">Home page - Layout 9</h3>
                                                                    </a>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <a href="${root}/front/home10.html" class="image-link">
																				<span class="thumbnail">
																					<img class="img-responsive img-border" src="${root}/front/img/demo/feature/home-10.jpg" alt="">
																					<span class="btn btn-default">Read More</span>
																				</span>
                                                                        <h3 class="figcaption">Home page - Layout 10</h3>
                                                                    </a>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <a href="${root}/front/home11.html" class="image-link">
																				<span class="thumbnail">
																					<img class="img-responsive img-border" src="${root}/front/img/demo/feature/home-11.jpg" alt="">
																					<span class="btn btn-default">Read More</span>
																				</span>
                                                                        <h3 class="figcaption">Home page - Layout 11</h3>
                                                                    </a>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="with-sub-menu hover">
                                                    <p class="close-menu"></p>
                                                    <a href="#" class="clearfix menu1">
                                                        <strong>导航</strong>

                                                    </a>
                                                    <div class="sub-menu" style="width: 100%; right: 0px; display: none;">
                                                        <div class="content" style="height: 288px; display: none;">
                                                            <div class="row">
                                                                <div class="col-md-3">
                                                                    <div class="column">
                                                                        <a href="#" class="title-submenu">Listing pages</a>
                                                                        <div>
                                                                            <ul class="row-list">
                                                                                <li><a href="${root}/front/category.html">Category Page 1 </a></li>
                                                                                <li><a href="${root}/front/category-v2.html">Category Page 2</a></li>
                                                                                <li><a href="${root}/front/category-v3.html">Category Page 3</a></li>
                                                                            </ul>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="column">
                                                                        <a href="#" class="title-submenu">Product pages</a>
                                                                        <div>
                                                                            <ul class="row-list">
                                                                                <li><a href="${root}/front/product.html">Image size - big</a></li>
                                                                                <li><a href="${root}/front/product-v2.html">Image size - medium</a></li>
                                                                                <li><a href="${root}/front/product-v3.html">Image size - small</a></li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="column">
                                                                        <a href="#" class="title-submenu">Shopping pages</a>
                                                                        <div>
                                                                            <ul class="row-list">
                                                                                <li><a href="${root}/front/cart.html">Shopping Cart Page</a></li>
                                                                                <li><a href="${root}/front/checkout.html">Checkout Page</a></li>
                                                                                <li><a href="${root}/front/compare.html">Compare Page</a></li>
                                                                                <li><a href="${root}/front/wishlist.html">Wishlist Page</a></li>

                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="column">
                                                                        <a href="#" class="title-submenu">My Account pages</a>
                                                                        <div>
                                                                            <ul class="row-list">
                                                                                <li><a href="${root}/front/login.html">Login Page</a></li>
                                                                                <li><a href="${root}/front/register.html">Register Page</a></li>
                                                                                <li><a href="${root}/front/my-account.html">My Account</a></li>
                                                                                <li><a href="${root}/front/order-history.html">Order History</a></li>
                                                                                <li><a href="${root}/front/order-information.html">Order Information</a></li>
                                                                                <li><a href="${root}/front/return.html">Product Returns</a></li>
                                                                                <li><a href="${root}/front/gift-voucher.html">Gift Voucher</a></li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="with-sub-menu hover">
                                                    <p class="close-menu"></p>
                                                    <a href="#" class="clearfix menu1">
                                                        <strong>帮助</strong>

                                                    </a>
                                                    <div class="sub-menu" style="width: 40%; right: auto; display: none;">
                                                        <div class="content" style="height: 160px; display: none;">
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <ul class="row-list">
                                                                        <li><a class="subcategory_item" href="${root}/front/faq.html">FAQ</a></li>

                                                                        <li><a class="subcategory_item" href="${root}/front/sitemap.html">Site Map</a></li>
                                                                        <li><a class="subcategory_item" href="${root}/front/contact.html">Contact us</a></li>
                                                                        <li><a class="subcategory_item" href="${root}/front/banner-effect.html">Banner Effect</a></li>
                                                                    </ul>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <ul class="row-list">
                                                                        <li><a class="subcategory_item" href="${root}/front/about-us.html">About Us 1</a></li>
                                                                        <li><a class="subcategory_item" href="${root}/front/about-us-2.html">About Us 2</a></li>
                                                                        <li><a class="subcategory_item" href="${root}/front/about-us-3.html">About Us 3</a></li>
                                                                        <li><a class="subcategory_item" href="${root}/front/about-us-4.html">About Us 4</a></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="with-sub-menu hover">
                                                    <p class="close-menu"></p>
                                                    <a href="#" class="clearfix menu1">
                                                        <strong>分类</strong>
                                                        <span class="label"></span>

                                                    </a>
                                                    <div class="sub-menu" style="width: 100%; right: 0px; display: none;">
                                                        <div class="content" style="height: 398px; display: none;">
                                                            <div class="row">
                                                                <div class="col-sm-12">
                                                                    <div class="row">
                                                                        <div class="col-md-3 img img1">
                                                                            <a href="#"><img src="${root}/front/img/demo/cms/img1.jpg" alt="banner1"></a>
                                                                        </div>
                                                                        <div class="col-md-3 img img2">
                                                                            <a href="#"><img src="${root}/front/img/demo/cms/img2.jpg" alt="banner2"></a>
                                                                        </div>
                                                                        <div class="col-md-3 img img3">
                                                                            <a href="#"><img src="${root}/front/img/demo/cms/img3.jpg" alt="banner3"></a>
                                                                        </div>
                                                                        <div class="col-md-3 img img4">
                                                                            <a href="#"><img src="${root}/front/img/demo/cms/img4.jpg" alt="banner4"></a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-md-3">
                                                                    <a href="#" class="title-submenu">Automotive</a>
                                                                    <div class="row">
                                                                        <div class="col-md-12 hover-menu">
                                                                            <div class="menu">
                                                                                <ul>
                                                                                    <li><a href="#" class="main-menu">Car Alarms and Security</a></li>
                                                                                    <li><a href="#" class="main-menu">Car Audio &amp; Speakers</a></li>
                                                                                    <li><a href="#" class="main-menu">Gadgets &amp; Auto Parts</a></li>
                                                                                    <li><a href="#" class="main-menu">More Car Accessories</a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <a href="#" class="title-submenu">Electronics</a>
                                                                    <div class="row">
                                                                        <div class="col-md-12 hover-menu">
                                                                            <div class="menu">
                                                                                <ul>
                                                                                    <li><a href="#" class="main-menu">Battereries &amp; Chargers</a></li>
                                                                                    <li><a href="#" class="main-menu">Headphones, Headsets</a></li>
                                                                                    <li><a href="#" class="main-menu">Home Audio</a></li>
                                                                                    <li><a href="#" class="main-menu">Mp3 Players &amp; Accessories</a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <a href="#" class="title-submenu">Jewelry &amp; Watches</a>
                                                                    <div class="row">
                                                                        <div class="col-md-12 hover-menu">
                                                                            <div class="menu">
                                                                                <ul>
                                                                                    <li><a href="#" class="main-menu">Earings</a></li>
                                                                                    <li><a href="#" class="main-menu">Wedding Rings</a></li>
                                                                                    <li><a href="#" class="main-menu">Men Watches</a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <a href="#" class="title-submenu">Bags, Holiday Supplies</a>
                                                                    <div class="row">
                                                                        <div class="col-md-12 hover-menu">
                                                                            <div class="menu">
                                                                                <ul>
                                                                                    <li><a href="#" class="main-menu">Gift &amp; Lifestyle Gadgets</a></li>
                                                                                    <li><a href="#" class="main-menu">Gift for Man</a></li>
                                                                                    <li><a href="#" class="main-menu">Gift for Woman</a></li>
                                                                                    <li><a href="#" class="main-menu">Lighter &amp; Cigar Supplies</a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>

                                                <li class="with-sub-menu hover">
                                                    <p class="close-menu"></p>
                                                    <a href="#" class="clearfix menu1">
                                                        <strong>小物件</strong>


                                                    </a>
                                                    <div class="sub-menu" style="width: 100%; display: none;">
                                                        <div class="content" style="display: none;">
                                                            <div class="row">
                                                                <div class="col-md-8">
                                                                    <div class="row">
                                                                        <div class="col-md-6 static-menu">
                                                                            <div class="menu">
                                                                                <ul>
                                                                                    <li>
                                                                                        <a href="#" class="main-menu">Automotive</a>
                                                                                        <ul>
                                                                                            <li><a href="#">Car Alarms and Security</a></li>
                                                                                            <li><a href="#">Car Audio &amp; Speakers</a></li>
                                                                                            <li><a href="3#">Gadgets &amp; Auto Parts</a></li>
                                                                                        </ul>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#" class="main-menu">Smartphone &amp; Tablets</a>
                                                                                        <ul>
                                                                                            <li><a href="#">Accessories for i Pad</a></li>
                                                                                            <li><a href="#">Apparel</a></li>
                                                                                            <li><a href="#">Accessories for iPhone</a></li>
                                                                                        </ul>
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6 static-menu">
                                                                            <div class="menu">
                                                                                <ul>
                                                                                    <li>
                                                                                        <a href="#" class="main-menu">Sports &amp; Outdoors</a>
                                                                                        <ul>
                                                                                            <li><a href="#">Camping &amp; Hiking</a></li>
                                                                                            <li><a href="#">Cameras &amp; Photo</a></li>
                                                                                            <li><a href="#">Cables &amp; Connectors</a></li>
                                                                                        </ul>
                                                                                    </li>
                                                                                    <li>
                                                                                        <a href="#" class="main-menu">Electronics</a>
                                                                                        <ul>
                                                                                            <li><a href="#">Battereries &amp; Chargers</a></li>
                                                                                            <li><a href="#">Bath &amp; Body</a></li>
                                                                                            <li><a href="#">Outdoor &amp; Traveling</a></li>
                                                                                        </ul>
                                                                                    </li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <span class="title-submenu">Bestseller</span>
                                                                    <div class="row">
                                                                        <div class="col-sm-12 list-product">
                                                                            <div class="product-thumb">
                                                                                <div class="image pull-left">
                                                                                    <a href="#"><img src="${root}/front/img/demo/shop/product/35.jpg" width="80" alt="Filet Mign" title="Filet Mign" class="img-responsive"></a>
                                                                                </div>
                                                                                <div class="caption">
                                                                                    <h4><a href="#">Filet Mign</a></h4>
                                                                                    <div class="rating-box">
                                                                                        <span class=""><i class="fa fa-star "></i></span>
                                                                                        <span class=""><i class="fa fa-star "></i></span>
                                                                                        <span class=""><i class="fa fa-star "></i></span>
                                                                                        <span class=""><i class="fa fa-star "></i></span>
                                                                                        <span class=""><i class="fa fa-star "></i></span>
                                                                                    </div>
                                                                                    <p class="price">$1,202.00</p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-12 list-product">
                                                                            <div class="product-thumb">
                                                                                <div class="image pull-left">
                                                                                    <a href="#"><img src="${root}/front/img/demo/shop/product/W1.jpg" width="80" alt="Dail Lulpa" title="Dail Lulpa" class="img-responsive"></a>
                                                                                </div>
                                                                                <div class="caption">
                                                                                    <h4><a href="#">Dail Lulpa</a></h4>
                                                                                    <div class="rating-box">
                                                                                        <span class=""><i class="fa fa-star "></i></span>
                                                                                        <span class=""><i class="fa fa-star "></i></span>
                                                                                        <span class=""><i class="fa fa-star "></i></span>
                                                                                        <span class=""><i class="fa fa-star "></i></span>
                                                                                        <span class="gray"><i class="fa fa-star "></i></span>
                                                                                    </div>
                                                                                    <p class="price">$78.00</p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-12 list-product">
                                                                            <div class="product-thumb">
                                                                                <div class="image pull-left">
                                                                                    <a href="#"><img src="${root}/front/img/demo/shop/product/141.jpg" width="80" alt="Canon EOS 5D" title="Canon EOS 5D" class="img-responsive"></a>
                                                                                </div>
                                                                                <div class="caption">
                                                                                    <h4><a href="#">Canon EOS 5D</a></h4>

                                                                                    <div class="rating-box">
                                                                                        <span class="gray"><i class="fa fa-star "></i></span>
                                                                                        <span class="gray"><i class="fa fa-star "></i></span>
                                                                                        <span class="gray"><i class="fa fa-star "></i></span>
                                                                                        <span class="gray"><i class="fa fa-star "></i></span>
                                                                                        <span class="gray"><i class="fa fa-star "></i></span>
                                                                                    </div>
                                                                                    <p class="price">
                                                                                        <span class="price-new">$60.00</span>
                                                                                        <span class="price-old">$145.00</span>

                                                                                    </p>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>


                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="">
                                                    <p class="close-menu"></p>
                                                    <a href="${root}/front/blog-page.html" class="clearfix menu1">
                                                        <strong>博客</strong>
                                                        <span class="label"></span>
                                                    </a>
                                                </li>


                                            </ul>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
                <!-- //end Main menu -->

            </div>
        </div>

    </div>

    <!-- Navbar switcher -->
    <!-- //end Navbar switcher -->

</header>
</body>
</html>
