<%--
  商品详情展示
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/10 0010
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品详情展示模板</title>
    <link rel="stylesheet" href="${root}/static/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${root}/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="card mb-3" style="max-width: 800px;">
    <div class="row no-gutters">
        <div class="col-md-6">
            <div class="row">
                <div class="col">
                    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="${root}/static/image/shiliu.jpg" class="d-block w-100" alt="图片无法加载">
                            </div>
                            <div class="carousel-item">
                                <img src="${root}/static/image/shiliu.jpg" class="d-block w-100" alt="图片无法加载">
                            </div>
                            <div class="carousel-item">
                                <img src="${root}/static/image/shiliu.jpg" class="d-block w-100" alt="图片无法加载">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
            <div class="m-2 row">
                <%--------------------------记得循环缩略图--------------------------%>
                <img src="${root}/static/image/shiliu.jpg" class="d-block m-0 col-2 p-0" alt="图片无法加载" style="width: 50px;height: 50px"/>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card-body">
                <%--------------------------商品名称/描述--------------------------%>
                <h5 class="card-title">此处为商品名称/描述</h5>
                <%--------------------------商品的价格--------------------------%>
                <div class="row alert-secondary m-1">
                    <h6 class="card-title col-2 pt-1 m-0 pl-0 pr-0">价格</h6>
                    <h4 class="card-title text-danger col-10 m-0 pl-0">商品的价格</h4>
                </div>
                <hr class="mt-2 mb-1" />
                <small class="pl-5 card-text">累计评价：<span class="text-danger">此处为查询出的数据</span></small>
                <hr class="m-1" />
                <dl class="row m-1">
                    <%
                        for(int i = 0;i<5;i++){
                    %>
                        <dt class="col-2 p-0 mt-2 mb-2">sku属性</dt>
                        <dd class="col-10 mt-2">
                            <%
                                for(int j = 0;j<3;j++){
                            %>
                            <span class="border">sku属性值</span>
                            <%
                            }
                            %>
                        </dd>
                    <%
                        }
                    %>
                </dl>
                <div class="row">
                    <div class="col-6 pl-5">
                        <%--------------------------添加跳转的地址--------------------------%>
                        <a class="text-muted" href=""><button type="button" class="btn btn-outline-danger">立即购买</button></a>
                    </div>
                    <div class="col-6">
                        <%--------------------------添加跳转的地址--------------------------%>
                        <a class="text-muted" href=""><button type="button" class="btn btn-danger">加入购物车</button></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${root}/static/lib/jquery/jquery.js"></script>
<script src="${root}/static/lib/bootstrap/js/bootstrap.js"></script>
</body>
</html>
