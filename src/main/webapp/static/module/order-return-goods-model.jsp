<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 2019/9/10
  Time: 17:27
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
            <li class="breadcrumb-item active" aria-current="page">退款、退换货</li>
        </ol>
    </div>
    <!-- 内容 -->
    <div class="row">


        <!-- 订单中的商品信息 -->
        <div class="alert alert-light col-12" role="alert">
            <!-- 退款内容 -->

            <div class="alert alert-danger col-12" role="alert">
                <h4 class="alert-heading">订单状态：买家申请退货退款</h4>
            </div>

            <!-- 退款的商品头部 -->
            <div class="alert alert-info col-12" role="alert">

            </div>
            <hr>
            <!-- 退款的商品内容 -->
            <p>
                <!-- 申请退货的商品 -->
                <div class="row">
                    <div class="col-2">
            <p class="mb-0">退货商品：</p>

        </div>
        <!-- 图片 -->
        <div class="col-2">
            <img src="<%=request.getContextPath() %>/static/image/Akali_Splash_5.jpg" alt="" class="col-12">
        </div>
        <!-- 商品标题名称 -->
        <div class="col-6">
            <span>【夏日特惠】鬼舞姬 阿卡麗傳説限定 3999点券</span>

        </div>
        <div class="mt-3 col-2">
            <a href="#" class="btn  btn-outline-info btn-sm " role="button">查看订单详情</a>
        </div>

    </div>

    </p>
    <hr>
    <!-- 退单的申请内容 -->
    <!-- 申请退单的服务类型 -->
    <div class="row">
        <div class="col-2">
            <p class="mb-0">服务类型：</p>

        </div>
        <div class="col-10">
            <p class="mb-0">
            <div class="radio">
                <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked> 仅退款
                </label>
            </div>
            <div class="radio">
                <label>
                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2" checked> 退货退款
                </label>
            </div>
            </p>

        </div>
    </div>
    <!-- 申请退单的原因 -->
    <div class="row">
        <div class="col-2">
            <p class="mb-0">退款原因：</p>
        </div>
        <div class="col-10">
            <p class="mb-0">
            <div class="btn-group">
                <button type="button" class="btn btn-outline-info btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                        aria-expanded="false">
                    请选择
                </button>
                <!-- <a class="btn btn-outline-info btn-sm dropdown-toggle" href="#" role="button" id="dropdownMenuLink"
                 data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    请选择
                </a>
-->
                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                    <a class="dropdown-item" href="#">质量问题</a>
                    <a class="dropdown-item" href="#">卖家发错货</a>
                    <a class="dropdown-item" href="#">商品成分描述不符</a>
                    <a class="dropdown-item" href="#">退运费</a>
                    <a class="dropdown-item" href="#">收到商品时有破损 / 污渍 / 变形</a>
                </div>
            </div>
            </p>
        </div>
    </div>
    <!-- 申请退单的金额 -->
    <div class="row">
        <div class="col-2">
            <p class="mb-0">退款金额：</p>
        </div>
        <div class="col-4">
            <p class="mb-0">
            <div class="input-group input-group-sm mb-3">
                <div class="input-group-prepend">
                    <span class="input-group-text">￥</span>
                    <span class="input-group-text">0.00</span>
                </div>
                <input type="text" class="form-control " aria-label="Dollar amount (with dot and two decimal places)">
            </div>
            </p>
        </div>
    </div>
    <!-- 申请退单的说明解释 -->
    <div class="row">
        <div class="col-2">
            <p class="mb-0">退款说明：</p>
        </div>
        <div class="col-6">
            <p class="mb-0">
            <div class="input-group ">
                <textarea class="form-control" aria-label="With textarea"></textarea>
            </div>
            </p>
        </div>
    </div>
    <!-- 申请退单的图片凭证 -->
    <div class="row">
        <div class="col-2">
            <p class="mb-0">上传图片：</p>
        </div>
        <div class="col-10">
            <p class="mb-0">

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-outline-info  rounded" data-toggle="modal" data-target="#exampleModalCenter">
                    ➕ 图片凭证
                </button>

                <!-- Modal -->
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
                 aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalCenterTitle">添加图片（最多三张）</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <input type="file" name="txt_file" id="txt_file" multiple class="file-loading" />
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
                            <button type="button" class="btn btn-primary">确定</button>
                        </div>
                    </div>
                </div>
            </div>
            </p>
        </div>
    </div>

    <!-- 提交按钮 -->
    <hr>
    <div class="row">
        <div class="col-2">
            <p class="mb-0"></p>
        </div>
        <div class="col-6">
            <p class="mb-0">
                <button type="button" class="btn btn-outline-danger  btn-block">提交</button>
            </p>
        </div>
    </div>



</div>


</div>
</div>
<script src="<%=request.getContextPath()  %>/static/lib/jquery/jquery.js"></script>
<script src="<%=request.getContextPath()  %>/static/lib/bootstrap/js/bootstrap.js"></script>
</body>
</html>
