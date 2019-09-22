<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>

    <!-- Basic page needs
    ============================================ -->
    <title>tyshop</title>
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
    <header id="header" class=" variantleft type_1">
        <!-- Header Top -->
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="header-top-left form-inline col-sm-6 col-xs-6 compact-hidden">
                        <div class="form-group currencies-block">
                            <form action="index.html" method="post" enctype="multipart/form-data" id="currency">
                                <a class="btn btn-xs dropdown-toggle" data-toggle="dropdown">
                                    <span class="icon icon-credit "></span> USD <span class="fa fa-angle-down"></span>
                                </a>
                                <ul class="dropdown-menu btn-xs">
                                    <li> <a href="#">(€)&nbsp;Euro</a></li>
                                    <li> <a href="#">(£)&nbsp;Pounds</a></li>
                                    <li> <a href="#">($)&nbsp;USD</a></li>
                                </ul>
                            </form>
                        </div>
                        <div class="form-group languages-block ">
                            <form action="index.html" method="post" enctype="multipart/form-data" id="bt-language">
                                <a class="btn btn-xs dropdown-toggle" data-toggle="dropdown">
                                    <img src="${root}/front/img/demo/flags/gb.png" alt="English" title="English">
                                    <span class="hidden-xs">English</span>
                                    <span class="fa fa-angle-down"></span>
                                </a>
                                <ul class="dropdown-menu" >
                                    <li><a href="index.php"><img class="image_flag" src="${root}/front/img/demo/flags/gb.png" alt="English" title="English"> English </a></li>
                                    <li> <a href="html_width_RTL/index.php"> <img class="image_flag" src="${root}/front/img/demo/flags/lb.png" alt="Arabic" title="Arabic"> Arabic </a> </li>
                                </ul>
                            </form>
                        </div>
                    </div>
                    <div class="header-top-right collapsed-block text-right  col-sm-6 col-xs-6 compact-hidden">
                        <div class="tabBlock1" id="TabBlock-1">
                            <ul class="top-link list-inline">
                                <li class="wishlist hidden-xs"><a href="#" id="wishlist-total" class="top-link-wishlist" title="Welcome Customer!"><span>Welcome Customer!</span></a></li>
                                <li class="signin"><a href="login.html" class="top-link-checkout" title="Sign In"><span>Sign In</span></a></li>
                                <li class="register"><a href="register.html" title="Register"><span>Register</span></a></li>
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
                        <a href="index.php"><img src="${root}/front/img/demo/logo/logo.png" title="Your Store" alt="Your Store"></a>
                    </div>
                    <!-- //end Logo -->

                    <!-- Search -->
                    <div id="sosearchpro" class="col-xs-12 col-sm-8 col-md-5 search-pro">

                        <form method="GET" action="index.html">
                            <div id="search0" class="search input-group">
                                <input class="autosearch-input form-control" type="text" value="" size="50" autocomplete="off" placeholder="Search product..." name="search">
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
                            <p><i class="fa fa-phone" aria-hidden="true"></i>	   Call Us: (888) 123456789</p>
                        </div>
                        <!--cart-->
                        <div id="cart" class=" btn-group btn-shopping-cart">
                            <a data-loading-text="Loading..." class="top_cart dropdown-toggle" data-toggle="dropdown">
                                <div class="shopcart">
                                    <span class="handle pull-left"></span>
                                    <span class="number-shopping-cart">2</span>
                                    <span class="title">My Cart</span>
                                    <p class="text-shopping-cart cart-total-full"> $0.00 </p>
                                </div>
                            </a>

                            <ul class="tab-content content dropdown-menu pull-right shoppingcart-box" role="menu">

                                <li>
                                    <table class="table table-striped">
                                        <tbody>
                                        <tr>
                                            <td class="text-center" style="width:70px">
                                                <a href="product.html"> <img src="${root}/front/img/demo/shop/product/35.jpg" style="width:70px" alt="Filet Mign" title="Filet Mign" class="preview"> </a>
                                            </td>
                                            <td class="text-left"> <a class="cart_product_name" href="product.html">Filet Mign</a> </td>
                                            <td class="text-center"> x1 </td>
                                            <td class="text-center"> $1,202.00 </td>
                                            <td class="text-right">
                                                <a href="product.html" class="fa fa-edit"></a>
                                            </td>
                                            <td class="text-right">
                                                <a onclick="cart.remove('2');" class="fa fa-times fa-delete"></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="text-center" style="width:70px">
                                                <a href="product.html"> <img src="${root}/front/img/demo/shop/product/141.jpg" style="width:70px" alt="Canon EOS 5D" title="Canon EOS 5D" class="preview"> </a>
                                            </td>
                                            <td class="text-left"> <a class="cart_product_name" href="product.html">Canon EOS 5D</a> </td>
                                            <td class="text-center"> x1 </td>
                                            <td class="text-center"> $60.00 </td>
                                            <td class="text-right">
                                                <a href="product.html" class="fa fa-edit"></a>
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
                                        <p class="text-right"> <a class="btn view-cart" href="cart.html"><i class="fa fa-shopping-cart"></i>View Cart</a>&nbsp;&nbsp;&nbsp; <a class="btn btn-mega checkout-cart" href="checkout.html"><i class="fa fa-share"></i>Checkout</a> </p>
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
                                                        <a href="#" class="menu1">Home  </a>
                                                        <div class="sub-menu" style="width: 100%; display: none;">
                                                            <div class="content" style="display: none;">
                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <a href="index.php" class="image-link">
																				<span class="thumbnail">
																					<img class="img-responsive img-border" src="${root}/front/img/demo/feature/home-1.jpg" alt="">
																					<span class="btn btn-default">Read More</span>
																				</span>
                                                                            <h3 class="figcaption">Home page - (Default)</h3>
                                                                        </a>

                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <a href="home2.php" class="image-link">
																				<span class="thumbnail">
																					<img class="img-responsive img-border" src="${root}/front/img/demo/feature/home-2.jpg" alt="">
																					<span class="btn btn-default">Read More</span>
																				</span>
                                                                            <h3 class="figcaption">Home page - Layout 2</h3>
                                                                        </a>

                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <a href="home3.php" class="image-link">
																				<span class="thumbnail">
																					<img class="img-responsive img-border" src="${root}/front/img/demo/feature/home-3.jpg" alt="">
																					<span class="btn btn-default">Read More</span>
																				</span>
                                                                            <h3 class="figcaption">Home page - Layout 3</h3>
                                                                        </a>

                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <a href="home4.php" class="image-link">
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
                                                                        <a href="home5.php" class="image-link">
																				<span class="thumbnail">
																					<img class="img-responsive img-border" src="${root}/front/img/demo/feature/home-5.jpg" alt="">
																					<span class="btn btn-default">Read More</span>
																				</span>
                                                                            <h3 class="figcaption">Home page - Layout 5</h3>
                                                                        </a>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <a href="home6.php" class="image-link">
																				<span class="thumbnail">
																					<img class="img-responsive img-border" src="${root}/front/img/demo/feature/home-6.jpg" alt="">
																					<span class="btn btn-default">Read More</span>
																				</span>
                                                                            <h3 class="figcaption">Home page - Layout 6</h3>
                                                                        </a>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <a href="home7.php" class="image-link">
																				<span class="thumbnail">
																					<img class="img-responsive img-border" src="${root}/front/img/demo/feature/home-7.jpg" alt="">
																					<span class="btn btn-default">Read More</span>
																				</span>
                                                                            <h3 class="figcaption">Home page - Layout 7</h3>
                                                                        </a>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <a href="home8.php" class="image-link">
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
                                                                        <a href="home9.php" class="image-link">
																				<span class="thumbnail">
																					<img class="img-responsive img-border" src="${root}/front/img/demo/feature/home-9.jpg" alt="">
																					<span class="btn btn-default">Read More</span>
																				</span>
                                                                            <h3 class="figcaption">Home page - Layout 9</h3>
                                                                        </a>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <a href="home10.php" class="image-link">
																				<span class="thumbnail">
																					<img class="img-responsive img-border" src="${root}/front/img/demo/feature/home-10.jpg" alt="">
																					<span class="btn btn-default">Read More</span>
																				</span>
                                                                            <h3 class="figcaption">Home page - Layout 10</h3>
                                                                        </a>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <a href="home11.php" class="image-link">
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
                                                            <strong>Features</strong>

                                                        </a>
                                                        <div class="sub-menu" style="width: 100%; right: 0px; display: none;">
                                                            <div class="content" style="height: 288px; display: none;">
                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="column">
                                                                            <a href="#" class="title-submenu">Listing pages</a>
                                                                            <div>
                                                                                <ul class="row-list">
                                                                                    <li><a href="category.html">Category Page 1 </a></li>
                                                                                    <li><a href="category-v2.html">Category Page 2</a></li>
                                                                                    <li><a href="category-v3.html">Category Page 3</a></li>
                                                                                </ul>

                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="column">
                                                                            <a href="#" class="title-submenu">Product pages</a>
                                                                            <div>
                                                                                <ul class="row-list">
                                                                                    <li><a href="product.html">Image size - big</a></li>
                                                                                    <li><a href="product-v2.html">Image size - medium</a></li>
                                                                                    <li><a href="product-v3.html">Image size - small</a></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="column">
                                                                            <a href="#" class="title-submenu">Shopping pages</a>
                                                                            <div>
                                                                                <ul class="row-list">
                                                                                    <li><a href="cart.html">Shopping Cart Page</a></li>
                                                                                    <li><a href="checkout.html">Checkout Page</a></li>
                                                                                    <li><a href="compare.html">Compare Page</a></li>
                                                                                    <li><a href="wishlist.html">Wishlist Page</a></li>

                                                                                </ul>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="column">
                                                                            <a href="#" class="title-submenu">My Account pages</a>
                                                                            <div>
                                                                                <ul class="row-list">
                                                                                    <li><a href="login.html">Login Page</a></li>
                                                                                    <li><a href="register.html">Register Page</a></li>
                                                                                    <li><a href="my-account.html">My Account</a></li>
                                                                                    <li><a href="order-history.html">Order History</a></li>
                                                                                    <li><a href="order-information.html">Order Information</a></li>
                                                                                    <li><a href="return.html">Product Returns</a></li>
                                                                                    <li><a href="gift-voucher.html">Gift Voucher</a></li>
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
                                                            <strong>Pages</strong>

                                                        </a>
                                                        <div class="sub-menu" style="width: 40%; right: auto; display: none;">
                                                            <div class="content" style="height: 160px; display: none;">
                                                                <div class="row">
                                                                    <div class="col-md-6">
                                                                        <ul class="row-list">
                                                                            <li><a class="subcategory_item" href="faq.html">FAQ</a></li>

                                                                            <li><a class="subcategory_item" href="sitemap.html">Site Map</a></li>
                                                                            <li><a class="subcategory_item" href="contact.html">Contact us</a></li>
                                                                            <li><a class="subcategory_item" href="banner-effect.html">Banner Effect</a></li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="col-md-6">
                                                                        <ul class="row-list">
                                                                            <li><a class="subcategory_item" href="about-us.html">About Us 1</a></li>
                                                                            <li><a class="subcategory_item" href="about-us-2.html">About Us 2</a></li>
                                                                            <li><a class="subcategory_item" href="about-us-3.html">About Us 3</a></li>
                                                                            <li><a class="subcategory_item" href="about-us-4.html">About Us 4</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="with-sub-menu hover">
                                                        <p class="close-menu"></p>
                                                        <a href="#" class="clearfix menu1">
                                                            <strong>Categories</strong>
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
                                                            <strong>Accessories</strong>


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
                                                        <a href="blog-page.html" class="clearfix menu1">
                                                            <strong>Blog</strong>
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
    <!-- //Header Container  -->
    <!-- Main Container  -->
    <div class="main-container container">
        <ul class="header-main ">
            <li class="home"><a href="#">Home   </a><i class="fa fa-angle-right" aria-hidden="true"></i></li>
            <li> payment</li>
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
                            <%--------------------------------------------支付表单--------------------------------------------%>
                            <form id="peymentForm" action="/views/frontOrderItem?method=findAllOrder" method="post">
                            <div class="panel-body form-row">
                                <div class="form-group col-md-4">
                                    <img src="${root}/front/img/xiaozhupeiqi.png">
                                    <br>
                                    <label class="control-label" for="confirm_agree">
                                        <input type="checkbox" checked="checked" value="1" required="" class="validate required" id="confirm_agree" name="confirm agree">
                                        <span>我已阅读及同意<a class="agree" href="#"><b>《支付条款》</b></a></span> </label>
                                </div>
                                <div class="form-group col-md-8"><br>
                                    <input class="btn btn-outline-secondary " type="button" value="其他支付方式" data-toggle="modal" data-target="#paymentmode">
                                    <div class="modal fade" id="paymentmode" tabindex="-1" role="dialog" aria-labelledby="paymentmodeLabel" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="paymentmodeLabel">提示</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    暂不支持此功能，请联系开发方购买
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">确定</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <input class="btn btn-outline-secondary " type="button" value="添加快捷/网银付款" data-toggle="modal" data-target="#paymentmode"><br><br><br>
                                    <label>请输入支付密码:</label><br>
                                    <input type="text" class="mb-2 mr-sm-2" name="paymentPassword" style="width: 150px;height: 35px">&nbsp;<a href="javascript:;" data-toggle="modal" data-target="#paymentmode">忘记密码？</a><br><br>
                                    <label>请输入6位数字支付密码</label><br>
                                </div>

                                <div class="buttons">
                                    <div >
                                        &nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" class="btn btn-primary" id="button-confirm" value="确认付款">
                                    </div>
                                </div>
                            </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
            <!--Middle Part End -->

        </div>
    </div>
    <!-- //Main Container -->

    <!-- Footer Container -->
    <footer class="footer-container type_footer1">
        <!-- Footer Top Container -->
        <section class="footer-top">
            <div class="container content">
                <div class="">
                    <div class=" collapsed-block ">
                        <div class="module clearfix">
                            <h3 class="modtitle">Contact Us	</h3>
                            <div class="modcontent">
                                <ul class="contact-address">
                                    <li><p><span class="fa fa-map-marker"></span><span>Address : </span> My Company, 42 avenue des Champs Elysées</p></li>
                                    <li><span class="fa fa-envelope-o"></span><span>Email : </span> <a href="#"> sales@yourcompany.com</a></li>
                                    <li><p><span class="fa fa-phone"> </span><span>Phone :</span> 0123456789</p> </li>
                                </ul>
                            </div>
                            <div class="share-icon">
                                <ul>
                                    <li class="facebook"><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                    <li class="twitter"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                    <li class="google"><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                    <li class="skype"><a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class=" box-information">
                        <div class="module clearfix">
                            <h3 class="modtitle">Information</h3>
                            <div class="modcontent">
                                <ul class="menu">
                                    <li><a href="about-us.html">About Us</a></li>
                                    <li><a href="faq.html">FAQ</a></li>
                                    <li><a href="order-history.html">Order history</a></li>
                                    <li><a href="order-information.html">Order information</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class=" box-extras">
                        <div class="module clearfix">
                            <h3 class="modtitle">Extras</h3>
                            <div class="modcontent">
                                <ul class="menu">
                                    <li><a href="contact.html">Contact Us</a></li>
                                    <li><a href="return.html">Returns</a></li>
                                    <li><a href="sitemap.html">Site Map</a></li>
                                    <li><a href="my-account.html">My Account</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="box-account">
                        <div class="module clearfix">
                            <h3 class="modtitle">My Account</h3>
                            <div class="modcontent">
                                <ul class="menu">
                                    <li><a href="#">Brands</a></li>
                                    <li><a href="gift-voucher.html">Gift Vouchers</a></li>
                                    <li><a href="#">Affiliates</a></li>
                                    <li><a href="#">Specials</a></li>
                                    <li><a href="#" target="_blank">Our Blog</a></li>
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
                            <h3>NEED HELP? </h3>
                            <p>SUPPORT TEAM 24/7 AT (844) 555-8386</p>
                        </div>
                        <div class="footer-mid-right col-sm-6 col-xs-12">
                            <div class="btn-sub">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                                <input class="autosearch-input form-control" type="text" value="" size="50" autocomplete="off" placeholder="Your Email Address..." name="subscribe">
                                <button type="submit" class="button-search btn btn-primary" name="submit_subscribe">Subscribe</button>
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
                    <h3>Download Our App</h3>
                    <a href="#"><img src="${root}/front/img/demo/download/app.jpg" alt=""></a>
                    <a href="#"><img src="${root}/front/img/demo/download/ggplay.jpg" alt=""></a>
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
                <p>Destino - Premium Multipurpose HTML5/CSS3 Theme - Designed by <a href="#">SmartAddons.Com</a></p>
            </div>
            <div class="back-to-top"><i class="fa fa-angle-up"></i><span> Top </span></div>
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


<!-- Theme files
============================================ -->


<script type="text/javascript" src="${root}/front/js/themejs/so_megamenu.js"></script>
<script type="text/javascript" src="${root}/front/js/themejs/addtocart.js"></script>
<script type="text/javascript" src="${root}/front/themejs/application.js"></script>
<script type="text/javascript" src="${root}/static/lib/jquery-validation/jquery.validate.js"></script>
<script type="text/javascript" src="${root}/static/js/zhy/paymentVerify.js"></script>

</body>
</html>


