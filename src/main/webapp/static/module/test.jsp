<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/10
  Time: 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="${root}/static/lib/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="${root}/static/lib/font-awesome/css/font-awesome.css" rel="stylesheet">
    <title>Title</title>
</head>
<body>
<div class="container">
    <div class="card-deck mb-3 text-center">
        <div class="card mb-4 shadow-sm">
            <div class="card-header">
                <h4 class="my-0 font-weight-normal">支付宝 <i class="fa"></i></h4>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-8 offset-1 mb-2">
                    <img src="${root}/static/image/alipay.jpg" height="130px" alt="">
                    </div>
                </div>
                <button type="button" class="btn btn-lg btn-block btn-outline-primary">选择支付</button>
            </div>
        </div>
        <div class="card mb-4 shadow-sm">
            <div class="card-header">
                <h4 class="my-0 font-weight-normal">微信</h4>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-8 offset-1 mb-2">
                        <img src="${root}/static/image/wechatpay.jpg" height="130px" alt="">
                    </div>
                </div>
                <button type="button" class="btn btn-lg btn-block btn-outline-primary">选择支付</button>
            </div>
        </div>
        <div class="card mb-4 shadow-sm">
            <div class="card-header">
                <h4 class="my-0 font-weight-normal">银联支付</h4>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-8 offset-2 mb-2">
                        <img src="${root}/static/image/unionpay.jpg" height="130px" alt="">
                    </div>
                </div>
                <button type="button" class="btn btn-lg btn-block btn-outline-primary">选择支付</button>
            </div>
        </div>
    </div>
</div>



<div id="accordion" style="position: fixed;top:10%;right: 0px">

    <div class="card ">
        <div class="card-header bg-danger">
            <a class="card-link" data-toggle="collapse" href="#collapseOne">
                <i class="fa fa-shopping-cart text-white"></i>
            </a>
        </div>
        <div id="collapseOne" class="collapse show" data-parent="#accordion">
            <div class="card-body" id="cart-list">
                <div class=" pre-scrollable">
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th scope="col"><input type="checkbox"></th>
                            <th scope="col">商品</th>
                            <th scope="col">数量</th>
                            <th scope="col">价格</th>
                            <th scope="col">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><input type="checkbox" id="cart-item1"></td>
                            <td>
                                <div class="card">
                                    <div class="card-body">
                                        <img src="${root}/static/image/product.svg" alt="">
                                    </div>
                                    <div class="card-footer">
                                        magic2
                                    </div>
                                </div>
                            </td>
                            <td>1</td>
                            <td>3306.00</td>
                            <td><a href="#">删除</a></td>
                        </tr>


                        </tbody>
                    </table>
                    <div class="mt-2">
                        <input type="submit" class="btn btn-block btn-danger" value="结算购物车">
                    </div>
                </div>

            </div>
        </div>
    </div>

</div>

<%--内容--%>
<div style="height: 2000px;border: 1px"></div>
<script src="${root}/static/lib/jquery/jquery.js"></script>
<script src="${root}/static/lib/bootstrap/js/bootstrap.js"></script>
</body>
</html>
