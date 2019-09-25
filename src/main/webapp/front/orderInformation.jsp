<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/20
  Time: 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <!-- Basic page needs
    ============================================ -->
    <title>订单详情</title>
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
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">

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

<body class="common-home res layout-subpage">
<div id="wrapper" class="wrapper-full ">
    <!-- Header Container  -->
    <!-- Header Container引入网页头部文件  -->

    <%@include file="top.jsp" %>
    <!-- //Header Container  -->
    <!-- Main Container  -->
    <div class="main-container container">
        <ul class="header-main ">
            <li class="home"><a href="${root}/front/index.jsp">首页   </a><i class="fa fa-angle-right" aria-hidden="true"></i></li>
            <li> 订单信息</li>
        </ul>

        <div class="row">
            <!--Middle Part Start-->
            <div id="content" class="col-sm-9">
                <h2 class="title">订单详细信息</h2>

                <table class="table table-bordered table-hover">
                    <thead>
                    <tr>
                        <td colspan="2" class="text-left">订单明细</td>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td style="width: 50%;" class="text-left"> <b>订单编号:</b>${map.id}
                            <br>
                            <b>下单日期:</b> ${map.date}</td>
                        <td style="width: 50%;" class="text-left"> <b>
                            订单状态:</b>
                            <c:choose>
                                <c:when test="${map.status==0}">已取消</c:when>
                                <c:when test="${map.status==1}">未支付</c:when>
                                <c:when test="${map.status==2}">已支付待发货</c:when>
                                <c:when test="${map.status==3}">已发货</c:when>
                                <c:when test="${map.status==4}">已收货</c:when>
                            </c:choose>
                            <br>
                            <b>订单金额:</b> ￥ ${map.money}
                            <br>
                            <b>配送方式:</b> 顺丰快递 </td>
                    </tr>
                    </tbody>
                </table>
                <table class="table table-bordered table-hover">
                    <thead>
                    <tr>
                        <td style="width: 50%; vertical-align: top;" class="text-left">配送地址</td>
                        <td style="width: 50%; vertical-align: top;" class="text-left">收货人姓名及联系方式</td>
                    </tr>
                    </thead>
                    <tbody>
                    <tr id="addressInfo">
                        <%--备份呢      --%>
                        <td class="text-left">四川省
                            <br>成都市
                            <br>锦江区
                            <br>${add.specific_address}
                            </td>
                        <td class="text-left">
                            姓名：${add.consignee_name}
                            <br>手机：${add.phone}<br>
                            <%--未付款状态显示修改地址按钮，否则不显示--%>
                            <c:if test="${map.status==1}">
                            <button type="button" class="btn btn-primary pull-left" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">修改收货信息</button>
                            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">修改收货信息</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <form>
                                                <div class="form-group">
                                                    <label for="recipient-add" class="col-form-label">新收货地址</label>
                                                    <input type="text" class="form-control" id="recipient-add"value="${add.specific_address}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="message-name" class="col-form-label">收货人</label>
                                                    <input type="text" class="form-control" id="message-name"value="${add.consignee_name}">
                                                </div>
                                                <div class="form-group">
                                                    <label for="message-phone" class="col-form-label">电话</label>
                                                    <input type="text" class="form-control" id="message-phone" value="${add.phone}">
                                                </div>
                                            </form>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                                            <button type="button" class="btn btn-primary editadd" data-dismiss="modal" data-addId="${add.id}" data-orderId="${map.id}" >确定</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </c:if>



                        </td>
                    </tr>
                    </tbody>
                </table>
                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>
                            <td class="text-left">商品图片</td>
                            <td class="text-left">商品名称</td>
                            <td class="text-left">型号</td>
                            <td class="text-right">数量</td>
                            <td class="text-right">单价</td>
                            <%--<td class="text-right">实付</td>--%>
                            <td style="width: 20px;"></td>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="ov" items="${vos}">
                            <tr>
                                <td class="text-center"><a href="${root}/product?method=detail&spu_id=${ov.spu_id}"><img src="${ov.url}" width="60px" alt="Xitefun Causal Wear Fancy Shoes" title="点击浏览商品" class="img-thumbnail"></a></td>
                                <td class="text-left">${ov.name} </td>
                                <td class="text-left">${ov.model}</td>
                                <td class="text-right">${ov.num}</td>
                                <td class="text-right">￥${ov.price}</td>
                                    <%--<td class="text-right">￥9600</td>--%>
                                <td style="white-space: nowrap;" class="text-right">
                                    <c:choose>
                                        <c:when test="${map.status>=2}">
                                            <a class="btn btn-primary" title="" data-toggle="tooltip" href="${root}/product?method=detail&spu_id=${ov.spu_id }" data-original-title="再次购买"><i class="fa fa-shopping-cart"></i></a>
                                            <a class="btn btn-danger" title="" data-toggle="tooltip" href="${root}/indect/return?id=${map.id}" data-original-title="退货/退款"><i class="fa fa-reply"></i></a>
                                        </c:when>
                                        <c:otherwise>
                                            <a class="btn btn-primary" title="" data-toggle="tooltip" href="${root}/product?method=detail&spu_id=${ov.spu_id }" data-original-title="再次购买"><i class="fa fa-shopping-cart"></i></a>
                                        </c:otherwise>
                                    </c:choose>
                                    <%--<a class="btn btn-primary" title="" data-toggle="tooltip" href="#" data-original-title="付款"><i class="fa fa-money"></i></a>--%>


                                </td>
                            </tr>
                        </c:forEach>


                        </tbody>
                        <tfoot>
                        <tr>
                            <td colspan="3"></td>
                            <td class="text-right"><b>合计</b>
                            </td>
                            <td class="text-right">￥${map.money}</td>
                            <td class="text-left">
                                <c:choose>
                                    <c:when test="${map.status==1}">
                                        <a class="btn btn-primary" title="" data-toggle="tooltip" href="/front/payment2.jsp" data-original-title="付款"><i class="fa fa-money"></i></a>
                                    </c:when>
                                    <c:when test="${map.status==4}">
                                        <a class="btn btn-primary" title="" data-toggle="tooltip" href="#" data-original-title="评价"><i class="fa fa-comment"></i></a>
                                    </c:when>
                                </c:choose>
                            </td>
                        </tr>
                        </tfoot>
                    </table>
                </div>
                <div class="buttons clearfix">
                    <div class="pull-right"><a class="btn btn-primary" href="${root}/front/index.jsp">继续购买</a>
                    </div>
                    <div class="pull-right m-3"><a class="btn btn-primary" href="${root}/views/frontOrderItem?method=findAllOrder">返回订单列表</a>
                    </div>
                </div>



            </div>
            <!--Middle Part End-->
            <!--Right Part Start -->

            <!--Right Part End -->
        </div>
    </div>
    <!-- //Main Container -->


    <!-- Footer Container -->


    <!-- //end Footer Container -->

</div>
<!-- /Footer Top Container -->
<%@include file="/front/down.jsp" %>
<!-- Social widgets -->
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


<!-- Theme files
============================================ -->


<script type="text/javascript" src="js/themejs/so_megamenu.js"></script>
<script type="text/javascript" src="js/themejs/addtocart.js"></script>
<script type="text/javascript" src="js/themejs/application.js"></script>
<script type="text/javascript" src="js/gy/ForModal.js"></script>


</body>
</html>
