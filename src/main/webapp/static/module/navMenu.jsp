<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/10
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <link rel="stylesheet" href="${roo}/static/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${roo}/static/lib/font-awesome/css/font-awesome.css">
</head>
<html>
<head>
    <title>左侧边栏模板</title>
    <style>
        /*div {*/
            /*border: 1px red solid;*/
        /*}*/

        /*a {*/
            /*border: 1px greenyellow solid;*/

        /*}*/

        .item {
            visibility: hidden;
            float: right;
        }

        .head:hover+.item{
            background: #1c7430;
            visibility: visible;
        }

        .clear:after {
            content: "";
            display: block;
            clear: both;

        }
    </style>
</head>
<body>
<%--如果需要添加新的条目，只需要复制下面这条div就可以了--%>
<div class="m-auto row">
        <div class="head p-0 m-1">
            <a href="#">女装/</a>
            <a href="#">男装/</a>
            <a href="#">内衣</a>>
        </div>

    <div class="col-6 item">
        <div class="col-12 p-1">
            <a href="#" class="font-weight-bolder">女装</a><br>
            <a href="#" class="col-1">连衣裙</a>
            <a href="#" class="col-1">T恤</a>
            <a href="#" class="col-1">衬衫</a>
            <a href="#" class="col-1">裤子</a>
            <a href="#" class="col-1">牛仔裤</a>
            <a href="#" class="col-1">西装</a>
            <a href="#" class="col-1">短外套</a>
            <a href="#" class="col-1">时尚套装</a>
        </div>
        <div class="col-12 p-0">
            <a href="#" class="font-weight-bolder">男装</a><br>
            <a href="#" class="col-1">连衣裙</a>
            <a href="#" class="col-1">T恤</a>
            <a href="#" class="col-1">衬衫</a>
            <a href="#" class="col-1">裤子</a>
            <a href="#" class="col-1">牛仔裤</a>
            <a href="#" class="col-1">西装</a>
            <a href="#" class="col-1">短外套</a>
            <a href="#" class="col-1">时尚套装</a>
        </div>
        <div class="col-12 p-0">
            <a href="#" class="font-weight-bolder">内衣</a><br>
            <a href="#" class="col-1">连衣裙</a>
            <a href="#" class="col-1">T恤</a>
            <a href="#" class="col-1">衬衫</a>
            <a href="#" class="col-1">裤子</a>
            <a href="#" class="col-1">牛仔裤</a>
            <a href="#" class="col-1">西装</a>
            <a href="#" class="col-1">短外套</a>
            <a href="#" class="col-1">时尚套装</a>
        </div>
    </div>
</div>


<script src="${root}/static/lib/jquery/jquery.js"></script>
<script src="${root}/static/lib/bootstrap/js/bootstrap.js"></script>
</body>
</html>
