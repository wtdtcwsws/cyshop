<%--
  Created by IntelliJ IDEA.
  User: 罗海
  Date: 2019/9/24
  Time: 9:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>

    <!-- Basic page needs
    ============================================ -->
    <title>购物车</title>
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
    <link href="css/checkout.css" rel="stylesheet">
    <link id="color_scheme" href="css/theme.css" rel="stylesheet">

    <!-- <link href="css/responsive.css" rel="stylesheet"> -->


</head>

<body class="res layout-subpage">
<div id="wrapper" class="wrapper-full ">
    <!-- Header Container  -->

    <!-- //Header Container  -->
    <!-- Main Container  -->
    <div class="main-container container">
        <ul class="header-main ">
            <li class="home"><a href="#">主页</a><i class="fa fa-angle-right" aria-hidden="true"></i></li>
            <li>购物车</li>
        </ul>
        <div class="row">
            <!--Middle Part Start-->
            <div id="content" class="col-sm-12">
                <h2 class="title">购物车</h2>
                <div class="table-responsive form-group">
                    <table class="table table-bordered">
                        <thead>
                            <tr class="text-center">
                                <th>
                                    <input type="checkbox" style="height: 13px;width: 13px;margin-right: 5px" data-js="quanxuan" onclick="quanxuan(this)"/>全选
                                </th>
                                <th class="text-left" style="padding-left: 35px" colspan="3">商品</th>
                                <th>单价</th>
                                <th>数量</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                        <tbody data-js="suoyou">
                        <c:forEach items="${cartDomain}" var="cartDomains">
                            <tr name="shangping" data-mid="${cartDomains.member_id}">
                                <td style="width: 70px" data-js="xuanze11">
                                    <input type="checkbox" style="height: 15px;width: 15px;position: absolute;left: 55px;" data-js="xuanze" data-sku="${cartDomains.sku_id}" onclick="danshangping(this)"/>
                                </td>
                                <td class="text-left" style="width: 80px;">
                                    <div style="display: inline-block;">
                                    <a href="product.html">
                                        <img width="70px" src="${cartDomains.img_path}" alt="Aspire Ultrabook Laptop" title="查看商品详情" class="img-thumbnail" />
                                    </a>
                                    </div>
                                </td>
                                <td class="text-left" style="width: 200px;">
                                    <span style="padding: 2px;background-color: red;color: white;">雏鹰精选</span>
                                    <p style="margin-top: 5px">
                                        ${cartDomains.description}
                                    </p>
                                </td>
                                <td class="text-left" style="width: 150px">
                                    <p>
                                        ${cartDomains.atrri}
                                    </p>
                                </td>
                                <td class="text-center" style="width: 150px" data-js="danjia">
                                    <p style="margin-top: 25px">
                                        <span style="margin-right: 5px">￥</span>${cartDomains.price}
                                    </p>
                                </td>
                                <td class="row text-left" style="width: 200px" data-js="shuliangs">

                                    <div class="btn-group" role="group" style="padding-top: 18px;margin-left: 30px">
                                        <button type="button" class="btn btn-danger" data-js="jian" onclick="jianshuliang(this)"><i class="fa fa-minus"></i></button>
                                        <div class="btn-group disabled" role="group">
                                            <input type="text" class="btn btn-default" value="1" style="width: 70px;" data-js="shuliang">
                                        </div>
                                        <button type="button" class="btn btn-info" data-js="jia" onclick="jiashuliang(this)"><i class="fa fa-plus"></i></button>
                                    </div>

                                </td>
                                <td class="text-left" width="200px">
                                    <div class="input-group btn-block" style="padding-left: 65px;padding-top: 16px">
                                            <button type="submit" data-toggle="tooltip" title="加入关注" class="btn btn-primary"><i class="fa fa-clone"></i></button>
                                            <button type="button" title="删除" class="btn btn-danger" data-toggle="modal" data-target="#shanchuModal" data-js="shanchu" data-jss="${cartDomains.id}"><i class="fa fa-times-circle"></i></button>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>

                <div class="row">
                    <div class="col-sm-4 col-sm-offset-8">
                        <table class="table table-bordered">
                            <tbody>
                            <tr>
                                <td class="text-center" colspan="2">
                                    <strong style="font-size: 15px">在这里可以显示您当前选中的商品总价</strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="text-right">
                                    <strong>商品数量：</strong>
                                </td>
                                <td class="text-right">
                                    <i class="fa fa-meh-o" style="color: green;font-size: 19px"></i>&nbsp;&nbsp;客官,您暂时没有选择商品哦
                                </td>
                            </tr>
                            <tr>
                                <td class="text-right">
                                    <strong>活动减免 (10%):</strong>
                                </td>
                                <td class="text-right">
                                    暂无
                                </td>
                            </tr>
                            <tr>
                                <td class="text-right">
                                    <strong>折扣减免 (20%):</strong>
                                </td>
                                <td class="text-right">
                                    暂无
                                </td>
                            </tr>
                            <tr>
                                <td class="text-right">
                                    <strong>商品总价：</strong>
                                </td>
                                <td class="text-right">
                                    ￥<span>0</span>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="buttons">
                    <a class="btn btn-primary pull-left" href="${root}/front/index.jsp">返回主页</a>
                    <button class="btn btn-primary pull-right" onclick="tijiao(this)">去结算</button>
                </div>
            </div>
            <!--Middle Part End -->

        </div>
    </div>
    <!-- //Main Container -->

</div>

<%--删除模态框--%>
<div class="modal fade" id="shanchuModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <span class="modal-title" id="exampleModalLabel" style="font-size: 15px">删除</span>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <div style="margin-left: 100px;">
                    <span style="display: inline-block;height: 100px;width: 100px"><i class="fa fa-meh-o" style="color: deepskyblue;font-size: 100px"></i></span>
                    <div style="display: inline-block;height: 100px;width: 260px;position: relative;top:-25px;">
                        <div style="font-size: 30px;">删除商品？</div>
                        <div style="font-size: 10px;position: relative;top:20px;color: red">商品删除后将不推送该商品的促销活动，请谨慎选择哦！</div>
                    </div>
                </div>
                <div style="margin-left: 150px">
                    <button type="button" class="btn btn-primary" style="height: 40px;width: 100px" data-js="shanchusku">删除</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal" data-js="quxiaoshanchu" style="height: 40px;width: 100px;margin-left: 30px">取消</button>
                </div>
            </div>

        </div>
    </div>
</div>
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

<script type="text/javascript" src="js/lh/lh-cart.js"></script>

</body>
</html>
