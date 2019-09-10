<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/10
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="${root}/static/lib/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="${root}/static/lib/font-awesome/css/font-awesome.css" rel="stylesheet">
    <title>支付</title>
</head>
<body>
<div class="container">
    <div class="card">
        <div class="card-header bg-info text-white">
            请选择支付方式
        </div>
        <div class="card-body bg-light">
            <form action="" method="post">

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


                <div class="row mt-5 mb-5">
                    <div class="input-group mt-1 col-3 offset-5">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1"><i class="fa fa-paypal"></i></span>
                        </div>
                        <input type="password" class="form-control" name="paymentpassword" placeholder="请输入支付密码" >
                    </div>
                    <div class="col-3 offset-1">
                        <input class="form-check-input btn btn-block btn-primary text-white" type="submit" value="确认付款">
                    </div>
                </div>
            </form>
        </div>

    </div>

</div>
<script src="${root}/static/lib/jquery/jquery.js"></script>
<script src="${root}/static/lib/bootstrap/js/bootstrap.js"></script>
</body>
</html>
