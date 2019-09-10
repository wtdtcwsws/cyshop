<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2019/9/10
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/static/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/static/lib/font-awesome/css/font-awesome.css">
    <title>单挑订单-模板 </title>
</head>
<body>
<div class="container">

    <div class="card">

        <!-- 订单条头部 -->
        <div class="card-header">


            <!-- 复选框内容 -->
            <div class="checkbox">
                <label><input type="checkbox" value="">时间2019-09-10</label>
                <span>订单号：60510230123018230182930</span>
            </div>
        </div>
        <!-- 订单条内容 -->
        <div class="card-body row">
            <!-- 商品基本信息 -->
            <div class="row col-8" >
                <!-- 图片 -->
                <div class="col-4" >
                    <img src="<%=request.getContextPath() %>/static/image/Akali_Splash_5.jpg" alt="" class="col-12" >
                </div>

                <!-- 商品标题名称 -->
                <div class="col-5" >
                    <span>【夏日特惠】鬼舞姬 阿卡麗傳説限定 3999点券</span>
                </div>

                <!-- 价钱信息 -->
                <div class="col-2" >
                    <span>￥39.99</span>
                </div>
                <!-- 数量 -->
                <div class="col-1">
                    <span>1</span>
                </div>
            </div>

            <!-- 功能栏 -->
            <div class="col-2 " >
                <div>
                    <a href="">订单详情</a>
                </div>
                <div>
                    <a href="">查看物流</a>
                </div>
                <div>
                    <a href="">退款/退换货</a>
                </div>
                <div>
                    <a href="">联系商家</a>
                </div>

            </div>

            <!-- 状态栏 -->
            <div class="col-2" >
                <!-- 剩余时间 -->
                <div>
                    <span>还剩余XXX天</span>
                </div>
                <!-- 货物状态按钮 -->
                <div>
                    <a href="#" class="btn btn-outline-info btn-sm mt-3" role="button">确认收货</a>
                </div>
            </div>

        </div>
        <!-- 订单条底部 -->
        <div class="card-footer">

        </div>
    </div>
</div>

<script src="<%=request.getContextPath()  %>/static/lib/jquery/jquery.js"></script>
<script src="<%=request.getContextPath()  %>/static/lib/bootstrap/js/bootstrap.js"></script>
</body>
</html>

