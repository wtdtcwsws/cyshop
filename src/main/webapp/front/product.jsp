<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>


    <!-- Basic page needs
    ============================================ -->
    <title>Destino - Advanced & High Customizable eCommerce HTML5/CSS3 Theme</title>
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
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="ico/favicon.png">

    <!-- Google web fonts
    ============================================ -->

    <!-- Libs CSS
    ============================================ -->
    <link rel="stylesheet" href="http://cdn.bootstrapmb.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link href="css/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="js/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
    <link href="js/owl-carousel/assets/owl.carousel.css" rel="stylesheet">
    <link href="js/owl-carousel/assets/owl.theme.default.min.css" rel="stylesheet">
    <link href="css/themecss/lib.css" rel="stylesheet">
    <link href="js/jquery-ui/jquery-ui.min.css" rel="stylesheet">

    <!-- Theme CSS
    ============================================ -->
    <link href="css/themecss/so_megamenu.css" rel="stylesheet">
    <link href="css/themecss/so-categories.css" rel="stylesheet">
    <link href="css/themecss/so-listing-tabs.css" rel="stylesheet">
    <link id="color_scheme" href="css/theme.css" rel="stylesheet">
    <!-- <link href="css/responsive.css" rel="stylesheet"> -->
    <link href="css/footer1.css" rel="stylesheet">
    <link href="css/header1.css" rel="stylesheet">


    <!-- Include Libs & Plugins
    ============================================ -->

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
    <!-- Placed at the end of the document so the pages load faster -->

    <!-- Theme files
    ============================================ -->
    <script type="text/javascript" src="js/themejs/so_megamenu.js"></script>
    <script type="text/javascript" src="js/themejs/addtocart.js"></script>
    <script type="text/javascript" src="js/themejs/application.js"></script>


</head>

<body class="res layout-subpage banners-effect-7">
<div id="wrapper" class="wrapper-full ">
    <!-- Header Container  -->
    <style type="text/css">
        div[data-skus]:hover {
            border: 2px solid red;
        }
    </style>
    <%@include file="top.jsp" %>
    <!-- //Header Container  -->
    <!-- Main Container  -->

    <div class="main-container container">
        <ul class="header-main type-1">
            <li class="home"><a href="/front/index.jsp">首页<i class="fa fa-angle-right" aria-hidden="true"></i></a>
            </li>
            <li class="home"><a>${spu_detail.spu_description}<i class="fa fa-angle-right" aria-hidden="true"></i></a>
            </li>
            <li><a>${spu_detail.spu_name}</a></li>
        </ul>

        <div class="row">
            <!--Middle Part Start-->
            <div id="content " class="col-md-12 col-sm-12 type-1">

                <div class="product-view row">
                    <div class="left-content-product col-lg-9 col-xs-12">
                        <div class="row">
                            <div class="content-product-left class-honizol col-md-6 col-sm-12 col-xs-12 ">
                                <div class="large-image  ">
                                    <img itemprop="image" class="product-image-zoom" src="${skuImgs.get(0).url}"
                                         data-zoom-image="${skuImgs.get(0).url}" title="Bint Beef" alt="Bint Beef">
                                </div>
                                <div id="thumb-slider" class="owl-theme owl-loaded owl-drag full_slider owl-carousel "
                                     data-nav='yes' data-loop="yes" data-margin="10" data-items_xs="2" data-items_sm="3"
                                     data-items_md="4">
                                    <c:forEach var="skuImg" items="${skuImgs}" varStatus="status">

                                        <a data-index="${status.index}" class="img thumbnail "
                                           data-image="${skuImg.url}" title="Bint Beef">
                                            <img src="${skuImg.url}" title="Bint Beef" alt="Bint Beef">
                                    </a>
                                    </c:forEach>

                                </div>

                            </div>

                            <div class="content-product-right col-md-6 col-sm-12 col-xs-12">
                                <div class="title-product">
                                    <h1 data-spu-name>${spu_detail.spu_name}</h1>
                                </div>
                                <hr>
                                <!-- Review -->
                                <div class="box-review form-group">
                                    <div class="ratings">
                                        <div class="rating-box">
                                           <p style="color: red"><strong>${spu_detail.spu_description}</strong></p>
                                           <p style="color: #f5761b;font-size: 14px">购机赠移动电源+数据线 </p>
                                            <hr>
                                        </div>
                                    </div>

                                </div>
                                <lable>
                                    <strong>选择规格：</strong>

                                </lable>
                                <div class="product-box-desc">
                                    <div class="row">
                                        <%--<select data-sku class="form-control form-control-sm col">--%>
                                        <c:forEach var="sku" items="${spu_skus}" varStatus="statuds">

                                            <div data-skuselect class="col inline"
                                                 style="width: 100px;margin-top: 10px;">
                                                <a href="javaScript:;">
                                                    <label for="${statuds.index}"
                                                           style="line-height: 24px">${sku.description}


                                                        <input type="radio" class="radio" data-sku name="sku"
                                                               id="${statuds.index}" value="${sku.id}"
                                                               style="display:none"/>

                                                    </label>

                                                </a>
                                            </div>

                                            <%--<option  value="${sku.id}">${sku.description}</option>--%>
                                        </c:forEach>
                                    </div>
                                    <hr>
                                    <%--</select>--%>
                                </div>
                                <div class="product-label form-group">
                                    <div class="stock" style="font-size: 18px;margin-top: 5px">
                                        <span>库存:</span> <span data-stock class="instock">10</span>
                                    </div>
                                    <hr>
                                    <div class="product_page_price price row" STYLE="margin: 50px"
                                         itemprop="offerDetails"
                                         itemscope="" itemtype="http://data-vocabulary.org/Offer">
                                        <div class="col-lg-6">
                                            <label class="price">价格：</label><span class="price-new"
                                                                                  itemprop="price">￥</span><span
                                                data-price class="price-new" itemprop="price">2799</span>
                                        <%--<span data-price class="price-old">$122.00</span>--%>
                                        </div>
                                        <div class="col-lg-6" style="margin-top: 10px">
                                            <a data-cart href="javaScript:;" data-original-title="加入购物车" class="btn btn-shopping-cart btn-danger"
                                               title="添加至购物车"> <span>加入购物车<i class="fa fa-shopping-cart"></i></span></a>
                                        </div>
                                    </div>

                                </div>
                                <div id="product">
                                    <div class="form-group box-info-product">
                                        <div class="option quantity">
                                            <div class="input-group quantity-control" unselectable="on"
                                                 style="-webkit-user-select: none;">
                                                <label>数量: </label>
                                                <input data-quantity class="form-control" type="text" name="quantity"
                                                       value="1">
                                                <input type="hidden" name="product_id" value="50">
                                                <span class="input-group-addon product_quantity_down"><i
                                                        class="fa fa-angle-down" aria-hidden="true"></i></span>
                                                <span class="input-group-addon product_quantity_up"><i
                                                        class="fa fa-angle-up" aria-hidden="true"></i></span>


                                            </div>

                                        </div>

                                    </div>
                                    <div class="info-product-right">
                                        <div class="row">
                                            <input data-buy type="button" class="btn btn-block btn-danger"
                                                   data-toggle="tooltip" title="立即下单" value="立即下单"
                                                   data-loading-text="Loading..." id="button-cart"
                                                   class="btn btn-mega btn-lg">
                                        </div>
                                        <div class="row " style="margin-top: 50px">
                                            <input data-order type="button" class="btn btn-block btn-primary"
                                                   data-toggle="tooltip" title="付款" value="去付款"
                                                   data-loading-text="Loading..." id="button-order"
                                                   class="btn btn-mega btn-lg">
                                        </div>

                                    </div>

                                </div>
                                <!-- end box info product -->


                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sx-12">
                                <div class="producttab ">
                                    <div class="tabsslider  col-xs-12">
                                        <ul class="nav nav-tabs">
                                            <li class="active"><a data-toggle="tab" href="#tab-1">声明</a></li>
                                            <li class="item_nonactive "><a data-toggle="tab" href="#tab-review">评价
                                                (1)</a></li>
                                            <%--<li class="item_nonactive"><a data-toggle="tab" href="#tab-4">Tags</a></li>--%>
                                            <%--<li class="item_nonactive"><a data-toggle="tab" href="#tab-5">Custom Tab</a>--%>
                                            <%--</li>--%>
                                        </ul>
                                        <div class="tab-content col-xs-12">
                                            <div id="tab-1" class="tab-pane fade active in">
                                                <p>
                                                    雏鹰商城为商城交易平台及互联网信息服务提供者，雏鹰（含网站、客户端等）所展示的商品/服务的标题、价格、详情等信息内容系由店铺经营者发布，其真实性、准确性和合法性均由店铺经营者负责。
                                                    <br>
                                                    雏鹰提醒用户购买商品/服务前注意谨慎核实。如用户对商品/服务的标题、价格、详情等任何信息有任何疑问的，请在购买前通过阿里旺旺与店铺经营者沟通确认；天猫存在海量店铺，如用户发现店铺内有任何违法/侵权信息，请立即向天猫举报并提供有效线索。
                                                </p>


                                            </div>
                                            <div id="tab-review" class="tab-pane fade  in">
                                                <form>
                                                    <div id="review">
                                                        <table class="table table-striped table-bordered">
                                                            <tbody>
                                                            <tr>
                                                                <td style="width: 50%;"><strong>Super
                                                                    Administrator</strong></td>
                                                                <td class="text-right">29/07/2015</td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="2">
                                                                    <p>Best this product opencart</p>
                                                                    <div class="ratings">
                                                                        <div class="rating-box">
                                                                            <i class="fa fa-star"></i>
                                                                            <i class="fa fa-star"></i>
                                                                            <i class="fa fa-star"></i>
                                                                            <i class="fa fa-star"></i>
                                                                            <i class="fa fa-star gray"></i>
                                                                        </div>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            </tbody>
                                                        </table>
                                                        <div class="text-right"></div>
                                                    </div>
                                                    <h2 id="review-title">Write a review</h2>
                                                    <div class="contacts-form">
                                                        <div class="form-group"><span class="icon icon-user"></span>
                                                            <input type="text" name="name" class="form-control"
                                                                   value="Your Name"
                                                                   onblur="if (this.value == '') {this.value = 'Your Name';}"
                                                                   onfocus="if(this.value == 'Your Name') {this.value = '';}">
                                                        </div>
                                                        <div class="form-group"><span
                                                                class="icon icon-bubbles-2"></span>
                                                            <textarea class="form-control" name="text"
                                                                      onblur="if (this.value == '') {this.value = 'Your Review';}"
                                                                      onfocus="if(this.value == 'Your Review') {this.value = '';}">Your Review</textarea>
                                                        </div>
                                                        <span style="font-size: 11px;"><span
                                                                class="text-danger">Note:</span>						HTML is not translated!</span>

                                                        <div class="form-group">
                                                            <b>Rating</b> <span>Bad</span>&nbsp;
                                                            <input type="radio" name="rating" value="1"> &nbsp;
                                                            <input type="radio" name="rating" value="2"> &nbsp;
                                                            <input type="radio" name="rating" value="3"> &nbsp;
                                                            <input type="radio" name="rating" value="4"> &nbsp;
                                                            <input type="radio" name="rating" value="5"> &nbsp;<span>Good</span>

                                                        </div>
                                                        <div class="buttons clearfix"><a id="button-review"
                                                                                         class="btn buttonGray">Continue</a>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                            <div id="tab-4" class="tab-pane fade">
                                                <a href="#">Monitor</a>,
                                                <a href="#">Apple</a>
                                            </div>
                                            <div id="tab-5" class="tab-pane fade">
                                                <p>Lorem ipsum dolor sit amet, consetetur
                                                    sadipscing elitr, sed diam nonumy eirmod
                                                    tempor invidunt ut labore et dolore
                                                    magna aliquyam erat, sed diam voluptua.
                                                    At vero eos et accusam et justo duo
                                                    dolores et ea rebum. Stet clita kasd
                                                    gubergren, no sea takimata sanctus est
                                                    Lorem ipsum dolor sit amet. Lorem ipsum
                                                    dolor sit amet, consetetur sadipscing
                                                    elitr, sed diam nonumy eirmod tempor
                                                    invidunt ut labore et dolore magna aliquyam
                                                    erat, sed diam voluptua. </p>
                                                <p>At vero eos et accusam et justo duo dolores
                                                    et ea rebum. Stet clita kasd gubergren,
                                                    no sea takimata sanctus est Lorem ipsum
                                                    dolor sit amet. Lorem ipsum dolor sit
                                                    amet, consetetur sadipscing elitr.</p>
                                                <p>Sed diam nonumy eirmod tempor invidunt
                                                    ut labore et dolore magna aliquyam erat,
                                                    sed diam voluptua. At vero eos et accusam
                                                    et justo duo dolores et ea rebum. Stet
                                                    clita kasd gubergren, no sea takimata
                                                    sanctus est Lorem ipsum dolor sit amet.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <section class="col-lg-3 hidden-sm hidden-md hidden-xs slider-products">
                        <div class="module latest-product titleLine">
                            <h3 class="modtitle">推荐：同类热卖</h3>
                            <hr>
                            <hr>
                            <hr>
                            <div class="modcontent ">
                                <c:forEach var="hot" items="${spus}" varStatus="i">
                                    <c:if test="${ spu_detail.catalog_3_id == hot.catalog_3_id}">
                                        <div class="product-latest-item">
                                            <div class="media">
                                                <div class="media-left">
                                                    <a href="/product?method=detail&spu_id=${hot.id}"><img
                                                            src="${skuImgs.get(i.index).url}"
                                                            alt="Cisi Chicken" title="Cisi Chicken"
                                                            class="img-responsive"
                                                            style="width: 78px; height: 104px;"></a>
                                                </div>
                                                <div class="media-body">
                                                    <div class="caption">
                                                        <h4>
                                                            <a href="/product?method=detail&spu_id=${hot.id}">${hot.spu_name}</a>
                                                        </h4>

                                                        <div class="price">
                                                            <span class="price-new">￥${skus.get(i.index).price}</span>
                                                        </div>
                                                        <div class="ratings">
                                                            <div class="rating-box">
                                                                <span class=""><i class="fa fa-star "></i></span>
                                                                <span class=""><i class="fa fa-star "></i></span>
                                                                <span class=""><i class="fa fa-star "></i></span>
                                                                <span class=""><i class="fa fa-star "></i></span>
                                                                <span class=""><i class="fa fa-star "></i></span>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </c:if>
                                </c:forEach>


                            </div>

                        </div>
                        <div class="module">
                            <div class="modcontent clearfix">
                                <div class="banners">
                                    <div>
                                        <a href="#"><img src="img/demo/cms/left-image-static.png" alt="left-image"></a>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </section>
                </div>
                <!-- Related Products -->
                <div class="related-product ">
                    <h3 class="modtitle">Related Products </h3>
                    <hr>
                    <hr>
                    <hr>
                    <div class="related-product-owl">
                        <div class=" owl-carousel related-owl " data-nav="yes" data-loop="yes" data-margin="30"
                             data-items_xs="1" data-items_sm="4" data-items_md="5">
                            <div class="product-layout">
                                <div class="product-item-container">
                                    <div class="left-block">
                                        <div class="product-image-container  second_img ">
                                            <a href="product.html" class="product-img"><img
                                                    src="img/demo/shop/product/product-1.jpg" alt=""></a>
                                            <!--Sale Label-->

                                            <span class="sale">-25%</span>
                                            <div class="hover">
                                                <ul>
                                                    <li class="icon-heart"><a class="wishlist" type="button"
                                                                              data-toggle="tooltip" title=""
                                                                              onclick="wishlist.add('42');"
                                                                              data-original-title="Add to Wish List"><i
                                                            class="fa fa-heart"></i></a></li>
                                                    <li class="icon-exchange"><a class="compare" type="button"
                                                                                 data-toggle="tooltip" title=""
                                                                                 onclick="compare.add('42');"
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
                                            <h4><a href="product.html">Dummy product #01</a></h4>
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
                                                <span class="price-new">$43.00</span>
                                                <span class="price-old">$75.00</span>
                                            </div>
                                            <div class="description item-desc hidden">
                                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
                                                    nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam
                                                    erat, sed diam voluptua. At vero eos et accusam et justo duo dolores
                                                    et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est
                                                    . </p>
                                            </div>
                                        </div>

                                        <div class="button-group">
                                            <button class="addToCart btn btn-default " type="button"
                                                    data-toggle="tooltip" title="" onclick="cart.add('42', '1');"
                                                    data-original-title="Add to Cart"><span class="">Add to Cart</span>
                                            </button>
                                        </div>
                                    </div><!-- right block -->
                                </div>
                            </div>


                            <div class="product-layout">
                                <div class="product-item-container">
                                    <div class="left-block">
                                        <div class="product-image-container  second_img ">
                                            <a href="product.html" class="product-img"><img
                                                    src="img/demo/shop/product/product-3.jpg" alt=""></a>
                                            <!--Sale Label-->

                                            <span class="sale">-25%</span>
                                            <div class="hover">
                                                <ul>
                                                    <li class="icon-heart"><a class="wishlist" type="button"
                                                                              data-toggle="tooltip" title=""
                                                                              onclick="wishlist.add('42');"
                                                                              data-original-title="Add to Wish List"><i
                                                            class="fa fa-heart"></i></a></li>
                                                    <li class="icon-exchange"><a class="compare" type="button"
                                                                                 data-toggle="tooltip" title=""
                                                                                 onclick="compare.add('42');"
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
                                            <h4><a href="product.html">Dummy product #02</a></h4>
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
                                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
                                                    nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam
                                                    erat, sed diam voluptua. At vero eos et accusam et justo duo dolores
                                                    et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est
                                                    . </p>
                                            </div>
                                        </div>

                                        <div class="button-group">
                                            <button class="addToCart btn btn-default " type="button"
                                                    data-toggle="tooltip" title="" onclick="cart.add('42', '1');"
                                                    data-original-title="Add to Cart"><span class="">Add to Cart</span>
                                            </button>
                                        </div>
                                    </div><!-- right block -->
                                </div>
                            </div>


                            <div class="product-layout">
                                <div class="product-item-container">
                                    <div class="left-block">
                                        <div class="product-image-container  second_img ">
                                            <a href="product.html" class="product-img"><img
                                                    src="img/demo/shop/product/product-2.jpg" alt=""></a>
                                            <!--Sale Label-->

                                            <span class="sale">-50%</span>
                                            <div class="hover">
                                                <ul>
                                                    <li class="icon-heart"><a class="wishlist" type="button"
                                                                              data-toggle="tooltip" title=""
                                                                              onclick="wishlist.add('42');"
                                                                              data-original-title="Add to Wish List"><i
                                                            class="fa fa-heart"></i></a></li>
                                                    <li class="icon-exchange"><a class="compare" type="button"
                                                                                 data-toggle="tooltip" title=""
                                                                                 onclick="compare.add('42');"
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
                                            <h4><a href="product.html">Dummy product #03</a></h4>
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
                                                <span class="price-new">$78.00</span>
                                                <span class="price-old">$154.00</span>
                                            </div>
                                            <div class="description item-desc hidden">
                                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
                                                    nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam
                                                    erat, sed diam voluptua. At vero eos et accusam et justo duo dolores
                                                    et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est
                                                    . </p>
                                            </div>
                                        </div>

                                        <div class="button-group">
                                            <button class="addToCart btn btn-default " type="button"
                                                    data-toggle="tooltip" title="" onclick="cart.add('42', '1');"
                                                    data-original-title="Add to Cart"><span class="">Add to Cart</span>
                                            </button>
                                        </div>
                                    </div><!-- right block -->
                                </div>
                            </div>


                            <div class="product-layout">
                                <div class="product-item-container">
                                    <div class="left-block">
                                        <div class="product-image-container  second_img ">
                                            <a href="product.html" class="product-img"><img
                                                    src="img/demo/shop/product/product-5.jpg" alt=""></a>
                                            <!--Sale Label-->

                                            <div class="hover">
                                                <ul>
                                                    <li class="icon-heart"><a class="wishlist" type="button"
                                                                              data-toggle="tooltip" title=""
                                                                              onclick="wishlist.add('42');"
                                                                              data-original-title="Add to Wish List"><i
                                                            class="fa fa-heart"></i></a></li>
                                                    <li class="icon-exchange"><a class="compare" type="button"
                                                                                 data-toggle="tooltip" title=""
                                                                                 onclick="compare.add('42');"
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
                                            <h4><a href="product.html">Dummy product #04</a></h4>
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
                                                <span class="price-new">$78.00</span>

                                            </div>
                                            <div class="description item-desc hidden">
                                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
                                                    nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam
                                                    erat, sed diam voluptua. At vero eos et accusam et justo duo dolores
                                                    et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est
                                                    . </p>
                                            </div>
                                        </div>

                                        <div class="button-group">
                                            <button class="addToCart btn btn-default " type="button"
                                                    data-toggle="tooltip" title="" onclick="cart.add('42', '1');"
                                                    data-original-title="Add to Cart"><span class="">Add to Cart</span>
                                            </button>
                                        </div>
                                    </div><!-- right block -->
                                </div>
                            </div>

                            <div class="product-layout">
                                <div class="product-item-container">
                                    <div class="left-block">
                                        <div class="product-image-container  second_img ">
                                            <a href="product.html" class="product-img"><img
                                                    src="img/demo/shop/product/product-4.jpg" alt=""></a>
                                            <!--Sale Label-->

                                            <div class="hover">
                                                <ul>
                                                    <li class="icon-heart"><a class="wishlist" type="button"
                                                                              data-toggle="tooltip" title=""
                                                                              onclick="wishlist.add('42');"
                                                                              data-original-title="Add to Wish List"><i
                                                            class="fa fa-heart"></i></a></li>
                                                    <li class="icon-exchange"><a class="compare" type="button"
                                                                                 data-toggle="tooltip" title=""
                                                                                 onclick="compare.add('42');"
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
                                            <h4><a href="product.html">Dummy product #05</a></h4>
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
                                                <span class="price-new">$85.00</span>

                                            </div>
                                            <div class="description item-desc hidden">
                                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
                                                    nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam
                                                    erat, sed diam voluptua. At vero eos et accusam et justo duo dolores
                                                    et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est
                                                    . </p>
                                            </div>
                                        </div>

                                        <div class="button-group">
                                            <button class="addToCart btn btn-default " type="button"
                                                    data-toggle="tooltip" title="" onclick="cart.add('42', '1');"
                                                    data-original-title="Add to Cart"><span class="">Add to Cart</span>
                                            </button>
                                        </div>
                                    </div><!-- right block -->
                                </div>
                            </div>


                            <div class="product-layout">
                                <div class="product-item-container">
                                    <div class="left-block">
                                        <div class="product-image-container  second_img ">
                                            <a href="product.html" class="product-img"><img
                                                    src="img/demo/shop/product/product-7.jpg" alt=""></a>
                                            <!--Sale Label-->

                                            <div class="hover">
                                                <ul>
                                                    <li class="icon-heart"><a class="wishlist" type="button"
                                                                              data-toggle="tooltip" title=""
                                                                              onclick="wishlist.add('42');"
                                                                              data-original-title="Add to Wish List"><i
                                                            class="fa fa-heart"></i></a></li>
                                                    <li class="icon-exchange"><a class="compare" type="button"
                                                                                 data-toggle="tooltip" title=""
                                                                                 onclick="compare.add('42');"
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
                                            <h4><a href="product.html">Dummy product #06</a></h4>
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

                                            </div>
                                            <div class="description item-desc hidden">
                                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
                                                    nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam
                                                    erat, sed diam voluptua. At vero eos et accusam et justo duo dolores
                                                    et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est
                                                    . </p>
                                            </div>
                                        </div>

                                        <div class="button-group">
                                            <button class="addToCart btn btn-default " type="button"
                                                    data-toggle="tooltip" title="" onclick="cart.add('42', '1');"
                                                    data-original-title="Add to Cart"><span class="">Add to Cart</span>
                                            </button>
                                        </div>
                                    </div><!-- right block -->
                                </div>
                            </div>


                            <div class="product-layout">
                                <div class="product-item-container">
                                    <div class="left-block">
                                        <div class="product-image-container  second_img ">
                                            <a href="product.html" class="product-img"><img
                                                    src="img/demo/shop/product/product-6.jpg" alt=""></a>
                                            <!--Sale Label-->
                                            <span class="new">New</span>

                                            <div class="hover">
                                                <ul>
                                                    <li class="icon-heart"><a class="wishlist" type="button"
                                                                              data-toggle="tooltip" title=""
                                                                              onclick="wishlist.add('42');"
                                                                              data-original-title="Add to Wish List"><i
                                                            class="fa fa-heart"></i></a></li>
                                                    <li class="icon-exchange"><a class="compare" type="button"
                                                                                 data-toggle="tooltip" title=""
                                                                                 onclick="compare.add('42');"
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
                                            <h4><a href="product.html">Dummy product #07</a></h4>
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
                                                <span class="price-new">$58.00</span>

                                            </div>
                                            <div class="description item-desc hidden">
                                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
                                                    nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam
                                                    erat, sed diam voluptua. At vero eos et accusam et justo duo dolores
                                                    et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est
                                                    . </p>
                                            </div>
                                        </div>

                                        <div class="button-group">
                                            <button class="addToCart btn btn-default " type="button"
                                                    data-toggle="tooltip" title="" onclick="cart.add('42', '1');"
                                                    data-original-title="Add to Cart"><span class="">Add to Cart</span>
                                            </button>
                                        </div>
                                    </div><!-- right block -->
                                </div>
                            </div>


                            <div class="product-layout">
                                <div class="product-item-container">
                                    <div class="left-block">
                                        <div class="product-image-container  second_img ">
                                            <a href="product.html" class="product-img"><img
                                                    src="img/demo/shop/product/product-6.jpg" alt=""></a>
                                            <!--Sale Label-->

                                            <div class="hover">
                                                <ul>
                                                    <li class="icon-heart"><a class="wishlist" type="button"
                                                                              data-toggle="tooltip" title=""
                                                                              onclick="wishlist.add('42');"
                                                                              data-original-title="Add to Wish List"><i
                                                            class="fa fa-heart"></i></a></li>
                                                    <li class="icon-exchange"><a class="compare" type="button"
                                                                                 data-toggle="tooltip" title=""
                                                                                 onclick="compare.add('42');"
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
                                            <h4><a href="product.html">Dummy product #08</a></h4>
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

                                            </div>
                                            <div class="description item-desc hidden">
                                                <p>Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam
                                                    nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam
                                                    erat, sed diam voluptua. At vero eos et accusam et justo duo dolores
                                                    et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est
                                                    . </p>
                                            </div>
                                        </div>

                                        <div class="button-group">
                                            <button class="addToCart btn btn-default " type="button"
                                                    data-toggle="tooltip" title="" onclick="cart.add('42', '1');"
                                                    data-original-title="Add to Cart"><span class="">Add to Cart</span>
                                            </button>
                                        </div>
                                    </div><!-- right block -->
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- end Related  Products-->


            </div>


        </div>
        <!--Middle Part End-->
    </div>
    <!-- //Main Container -->


    <!-- Footer Container -->
    <%@include file="down.jsp" %>
    <!-- //end Footer Container -->


</div>

<script src="js/wt/ajax-selectSku.js"></script>
<script src="js/wt/ajax-buySku.js"></script>
<script src="js/wt/ajax-createOrder.js"></script>
<script type="text/javascript" src="${root}/front/js/wt/checked.js"></script>
<script type="text/javascript" src="${root}/front/js/wt/ajax-addCartItem.js"></script>
</body>
</html>