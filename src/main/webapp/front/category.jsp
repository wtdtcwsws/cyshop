<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<body class="res layout-subpage banners-effect-1">
<div id="wrapper" class="wrapper-full ">
    <!-- Header Container  -->
    <%@include file="top.jsp" %>
    <!-- //Header Container  -->
    <!-- Main Container  -->
    <div class="main-container container">
        <ul class="header-main">
            <li class="home"><a href="index.jsp">主页 </a><i class="fa fa-angle-right" aria-hidden="true"></i></li>
            <li>${catalog3name}</li>
        </ul>

        <div class="row">
            <!--Left Part Start -->
            <aside class="col-sm-4 col-md-3 type-3" id="column-left">
                <div class="module menu-category titleLine">
                    <h3 class="modtitle">Categories</h3>
                    <div class="modcontent">
                        <div class="box-category">
                            <ul id="cat_accordion" class="list-group">
                                <li class="hadchild"><a href="category.html" class="cutom-parent">Smartphone &
                                    Tablets</a> <span class="button-view  fa fa-plus-square-o"></span>
                                    <ul style="display: block;">
                                        <li><a href="category.html">Men's Watches</a></li>
                                        <li><a href="category.html">Women's Watches</a></li>
                                        <li><a href="category.html">Kids' Watches</a></li>
                                        <li><a href="category.html">Accessories</a></li>
                                    </ul>
                                </li>
                                <li class="hadchild"><a class="cutom-parent" href="category.html">Electronics</a> <span
                                        class="button-view  fa fa-plus-square-o"></span>
                                    <ul style="display: none;">
                                        <li><a href="category.html">Cycling</a></li>
                                        <li><a href="category.html">Running</a></li>
                                        <li><a href="category.html">Swimming</a></li>
                                        <li><a href="category.html">Football</a></li>
                                        <li><a href="category.html">Golf</a></li>
                                        <li><a href="category.html">Windsurfing</a></li>
                                    </ul>
                                </li>
                                <li class="hadchild"><a href="category.html" class="cutom-parent">Shoes</a> <span
                                        class="button-view  fa fa-plus-square-o"></span>
                                    <ul style="display: none;">
                                        <li><a href="category.html">Sub Categories</a></li>
                                        <li><a href="category.html">Sub Categories</a></li>
                                        <li><a href="category.html">Sub Categories</a></li>
                                        <li><a href="category.html">Sub Categories</a></li>
                                        <li><a href="category.html">Sub Categories</a></li>
                                    </ul>
                                </li>
                                <li class="hadchild"><a href="category.html" class="cutom-parent">Watches</a> <span
                                        class="button-view  fa fa-plus-square-o"></span>
                                    <ul style="display: none;">
                                        <li><a href="category.html">Men's Watches</a></li>
                                        <li><a href="category.html">Women's Watches</a></li>
                                        <li><a href="category.html">Kids' Watches</a></li>
                                        <li><a href="category.html">Accessories</a></li>
                                    </ul>
                                </li>
                                <li class="hadchild"><a href="category.html" class="cutom-parent">Jewellery</a> <span
                                        class="button-view  fa fa-plus-square-o"></span>
                                    <ul style="display: none;">
                                        <li><a href="category.html">Sub Categories</a></li>
                                        <li><a href="category.html">Sub Categories</a></li>
                                        <li><a href="category.html">Sub Categories</a></li>
                                        <li><a href="category.html">Sub Categories</a></li>
                                        <li><a href="category.html">Sub Categories</a></li>
                                    </ul>
                                </li>
                                <li class=""><a href="category.html" class="cutom-parent">Health &amp; Beauty</a> <span
                                        class="dcjq-icon"></span></li>
                                <li class=""><a href="category.html" class="cutom-parent">Kids &amp; Babies</a> <span
                                        class="dcjq-icon"></span></li>
                                <li class=""><a href="category.html" class="cutom-parent">Sports</a> <span
                                        class="dcjq-icon"></span></li>
                                <li class=""><a href="category.html" class="cutom-parent">Home &amp; Garden</a><span
                                        class="dcjq-icon"></span></li>
                                <li class=""><a href="category.html" class="cutom-parent">Wines &amp; Spirits</a> <span
                                        class="dcjq-icon"></span></li>
                            </ul>
                        </div>


                    </div>
                </div>
                <div class="module latest-product titleLine">
                    <h3 class="modtitle">Latest Product</h3>
                    <div class="modcontent ">
                        <div class="product-latest-item">
                            <div class="media">
                                <div class="media-left">
                                    <a href="#"><img src="img/demo/shop/product/m1.jpg" alt="Cisi Chicken"
                                                     title="Cisi Chicken" class="img-responsive"
                                                     style="width: 100px; height: 82px;"></a>
                                </div>
                                <div class="media-body">
                                    <div class="caption">
                                        <h4><a href="#">Sunt Molup</a></h4>

                                        <div class="price">
                                            <span class="price-new">$100.00</span>
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
                        <div class="product-latest-item">
                            <div class="media">
                                <div class="media-left">
                                    <a href="#"><img src="img/demo/shop/product/m2.jpg" alt="Cisi Chicken"
                                                     title="Cisi Chicken" class="img-responsive"
                                                     style="width: 100px; height: 82px;"></a>
                                </div>
                                <div class="media-body">
                                    <div class="caption">
                                        <h4><a href="#">Et Spare</a></h4>

                                        <div class="price">
                                            <span class="price-new">$99.00</span>
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
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="product-latest-item">
                            <div class="media">
                                <div class="media-left">
                                    <a href="#"><img src="img/demo/shop/product/18.jpg" alt="Cisi Chicken"
                                                     title="Cisi Chicken" class="img-responsive"
                                                     style="width: 100px; height: 82px;"></a>
                                </div>
                                <div class="media-body">
                                    <div class="caption">
                                        <h4><a href="#">Cisi Chicken</a></h4>

                                        <div class="price">
                                            <span class="price-new">$59.00</span>
                                        </div>
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class="gray"><i class="fa fa-star"></i></span>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="product-latest-item transition">
                            <div class="media">
                                <div class="media-left">
                                    <a href="#"><img src="img/demo/shop/product/9.jpg" alt="Cisi Chicken"
                                                     title="Cisi Chicken" class="img-responsive"
                                                     style="width: 100px; height:82px;"></a>
                                </div>
                                <div class="media-body">
                                    <div class="caption">
                                        <h4><a href="#">Kevin Labor</a></h4>
                                        <div class="price">
                                            <span class="price-new">$245.00</span>
                                        </div>
                                        <div class="ratings">
                                            <div class="rating-box">
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class=""><i class="fa fa-star "></i></span>
                                                <span class="gray"><i class="fa fa-star"></i></span>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>


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
            </aside>
            <!--Left Part End -->

            <!--Middle Part Start-->
            <div id="content" class="col-md-9 col-sm-8 type-3">
                <div class="products-category">
                    <!-- Filters -->
                    <div class="product-filter filters-panel">
                        <div class="row">
                            <div class="col-md-5 visible-lg">
                                <div class="view-mode">
                                    <div class="list-view">
                                        <button class="btn btn-default grid active" data-view="grid"
                                                data-toggle="tooltip" data-original-title="Grid"><i
                                                class="fa fa-th-large" aria-hidden="true"></i></button>
                                        <button class="btn btn-default list" data-view="list" data-toggle="tooltip"
                                                data-original-title="List"><i class="fa fa-th-list"></i></button>
                                    </div>
                                </div>
                            </div>
                            <div class="short-by-show form-inline text-right col-lg-7 col-sm-12 col-xs-12">
                                <div class="text">
                                    <p>item 01 - 16 of 47 total</p>
                                </div>
                                <div class="form-group short-by">
                                    <label class="control-label" for="input-sort">Sort By:</label>
                                    <select id="input-sort" class="form-control" onchange="location = this.value;">

                                        <option value="" selected="selected">Default</option>
                                        <option value="">Name (A - Z)</option>
                                        <option value="">Name (Z - A)</option>
                                        <option value="">Price (Low &gt; High)</option>
                                        <option value="">Price (High &gt; Low)</option>
                                        <option value="">Rating (Highest)</option>
                                        <option value="">Rating (Lowest)</option>
                                        <option value="">Model (A - Z)</option>
                                        <option value="">Model (Z - A)</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <select id="input-limit" class="form-control" onchange="location = this.value;">
                                        <option value="" selected="selected">16</option>
                                        <option value="">25</option>
                                        <option value="">50</option>
                                        <option value="">75</option>
                                        <option value="">100</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- //end Filters -->
                    <!--changed listings-->
                    <div class="products-list grid ">
                        <c:forEach var="spu" items="${spus}" varStatus="status">
                            <c:if test="${spu.catalog_3_id==navi3}">
                                <div class="product-layout">
                                    <div class="product-item-container">
                                        <div class="left-block">
                                            <div class="product-image-container  second_img ">
                                                <a data-href="${spu.id}" href="/product?method=detail&spu_id=${spu.id}"
                                                   class="product-img"><img
                                                        src="/front/img/sku-img/${status.index}.jpg" alt=""></a>
                                                <!--Sale Label-->
                                                <span class="new">New</span>

                                            </div>
                                        </div>
                                        <div class="right-block">
                                            <div class="caption">
                                                <h4><a data-href="${spu.id}"
                                                       href="/product?method=detail&spu_id=${spu.id}">${spu.spu_name}</a>
                                                </h4>
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
                                                    <select >
                                                    <c:forEach var="sku" items="${skus}" >
                                                        <c:if test="${sku.spu_id == spu.id}">


                                                        <option class="price-new">￥${sku.price}</option>

                                                       </c:if>
                                                    </c:forEach>
                                                    </select>
                                                </div>

                                                <div class="description item-desc hidden">
                                                    <p>分类：${spu.spu_description}</p>
                                                </div>
                                            </div>

                                        </div><!-- right block -->
                                    </div>
                                </div>
                            </c:if>
                        </c:forEach>

                    </div>
                    <!--// End Changed listings-->
                    <!-- Filters -->
                    <div class="product-filter filters-panel">
                        <div class="row">
                            <div class="col-md-5 visible-lg">
                                <div class="view-mode">
                                    <div class="list-view">
                                        <button class="btn btn-default grid active" data-view="grid"
                                                data-toggle="tooltip" data-original-title="Grid"><i
                                                class="fa fa-th-large" aria-hidden="true"></i></button>
                                        <button class="btn btn-default list" data-view="list" data-toggle="tooltip"
                                                data-original-title="List"><i class="fa fa-th-list"></i></button>
                                    </div>
                                </div>
                            </div>
                            <div class="short-by-show form-inline text-right col-lg-7 col-sm-12 col-xs-12">
                                <div class="text">
                                    <p>item 01 - 16 of 47 total</p>
                                </div>
                                <div class="box-pagination text-right">
                                    <ul class="pagination">
                                        <li class="active"><span>1</span></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- //end Filters -->

                </div>

            </div>


        </div>
        <!--Middle Part End-->
    </div>
    <!-- //Main Container -->


    <!-- Footer Container -->
    <%@include file="down.jsp" %>
    <!-- //end Footer Container -->

</div>
<!-- Social widgets -->


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


<!-- Theme files
============================================ -->


<script type="text/javascript" src="js/themejs/so_megamenu.js"></script>
<script type="text/javascript" src="js/themejs/addtocart.js"></script>
<script type="text/javascript" src="js/themejs/application.js"></script>
<script type="text/javascript"><!--
// Check if Cookie exists
if ($.cookie('display')) {
    view = $.cookie('display');
} else {
    view = 'grid';
}
if (view) display(view);
//--></script>
<%--<script type="text/javascript" src="js/wt/ajax-detail.js"></script>--%>
</body>
