<%--
  轮播图
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/10 0010
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>轮播图模板</title>
    <link rel="stylesheet" href="${root}/static/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${root}/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>


<div class="row">
    <div class="col">
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <%-----------------------------图片1--------------------------%>
                    <img src="${root}/static/image/img_nature_wide.jpg" class="d-block w-100" alt="图片无法加载">
                </div>
                <div class="carousel-item">
                    <%-----------------------------图片2--------------------------%>
                    <img src="${root}/static/image/img_nature_wide.jpg" class="d-block w-100" alt="图片无法加载">
                </div>
                <div class="carousel-item">
                    <%-----------------------------图片3--------------------------%>
                    <img src="${root}/static/image/img_nature_wide.jpg" class="d-block w-100" alt="图片无法加载">
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



<script src="${root}/static/lib/jquery/jquery.js"></script>
<script src="${root}/static/lib/bootstrap/js/bootstrap.js"></script>
</body>
</html>
