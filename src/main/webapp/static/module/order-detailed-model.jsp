<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2019/9/10
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/static/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/static/lib/font-awesome/css/font-awesome.css">
    <title>订单详情</title>
</head>
<body>
<!-- 订单详情的容器 -->
<div class="alert alert-dark container" role="alert">

    <!-- 标题 -->
    <div class="row ">
        <ol class="breadcrumb col-12">
            <li class="breadcrumb-item"><a href="#">我的订单</a></li>
            <li class="breadcrumb-item active" aria-current="page">订单详情</li>
        </ol>
    </div>
    <!-- 内容 -->
    <div class="row">


        <!-- 订单中的商品信息 -->
        <div class="alert alert-light col-12" role="alert">
            <!-- 订单状态内容 -->
            <div class="alert alert-danger col-12" role="alert">
                <h4 class="alert-heading">订单状态：商家已发货，等待买家确认</h4>
            </div>
            <p>已签收 / 运送中 ，签收人凭取货吗签收。感谢使用SC蜂巢【自提柜】，期
                待再次为您服务。</p>
            <hr>
            <p class="mb-0">收货人：苏格拉底 86-18672335821</p>
            <p class="mb-0">收货地址：四川省 成都市 双流区 东升街道传奇大路119号</p>

            <!-- 商品头部 -->
            <div class="alert alert-info col-12 mt-3" role="alert">

            </div>
            <hr>
            <!-- 商品内容 -->
            <p>
            <div class="row">
                <!-- 图片 -->
                <div class="col-2">
                    <img src="<%=request.getContextPath() %>/static/image/Akali_Splash_5.jpg" alt="" class="col-12">
                </div>
                <!-- 商品标题名称 -->
                <div class="col-6">
                    <span>【夏日特惠】鬼舞姬 阿卡麗傳説限定 3999点券</span>

                </div>
                <!-- 操作栏 -->
                <div class="col-2 text-center">

                    <span class="mt-0 text-center">1</span>


                </div>

                <!-- 价钱信息 -->
                <div class="col-2">
                    <span>￥39.99</span>

                    <div class="mt-3">
                        <a href="#" class="btn  btn-outline-info btn-sm " role="button">申请退换</a>
                    </div>
                </div>

            </div>

            </p>
            <hr>
            <div class="row">
                <div class="col-10">
                    <p class="mb-0">商品总价</p>
                    <p class="mb-0">运费（快递）</p>
                    <p class="mb-0">运费险(由cy商城官方承担)</p>
                    <p class="mb-0">购物券</p>
                    <p class="mb-0">订单总价</p>
                </div>
                <div class="col-2">
                    <p class="mb-0">￥39.99</p>
                    <p class="mb-0">￥0.00</p>
                    <p class="mb-0">￥0.00</p>
                    <p class="mb-0">￥0.00</p>
                    <p class="mb-0">￥39.99</p>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-10">
                    <p class="mb-0">实付款</p>

                </div>
                <div class="col-2">
                    <p class="mb-0" style="color: red;">￥39.99</p>

                </div>

            </div>
            <hr>
            <!-- 操作栏 -->
            <div class="row ">
                <div class="col-10">

                </div>
                <div class=" col-2 ">
                    <a href="#" class="btn  btn-outline-info btn-sm " role="button">确认收货</a>


                </div>

            </div>

        </div>
        <div class="alert alert-light col-12" role="alert">

            <p class="mb-0">订单编号：523423194532453430</p>
            <p class="mb-0">支付交易号：20190909220011255480218204854</p>
            <p class="mb-0">创建时间：2019-09-09 16.:34:30</p>
            <p class="mb-0">付款时间：2019-09-09 17.:34:30</p>
            <p class="mb-0">发货时间：2019-09-09 16.:34:30</p>
            <p class="mb-0">成交时间：2019-09-09 17.:34:30</p>
        </div>


    </div>
</div>
<script src="<%=request.getContextPath()  %>/static/lib/jquery/jquery.js"></script>
<script src="<%=request.getContextPath()  %>/static/lib/bootstrap/js/bootstrap.js"></script>
</body>
</html>
