<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/10
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="${root}/static/lib/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="${root}/static/lib/font-awesome/css/font-awesome.css" rel="stylesheet">
    <title>评论</title>
</head>
<body>
<div class="container">
    <div class="card">
        <div class="card-header bg-info text-white">商品评价</div>
        <div class="card-body">
            <form action="" method="post">
                <div class="row">
                    <div class="col">
                        <div class="card" style="width: 18rem;">
                            <img class="card-img-top" src="${root}/static/image/comment1.png" alt="Card image cap">
                            <div class="card-body">
                                <h4 class="card-text"><a href="#">magic2</a> </h4>
                                <p class="card-text">华为潮牌HONOR/荣耀 引擎耳机2入耳式线控耳塞低音炮科技降噪官方</p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="row">
                            <div class="col-2">
                                <div class="mt-2 text-right">评分</div>
                            </div>
                            <div class="col-2">
                                <select class="form-control" name="star" id="">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                </select>
                            </div>
                            <div class="col-1 ">
                                <i class="mt-2 fa fa-star text-warning"></i>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="form-group col offset-1">
                                <label >评论商品</label>
                                <textarea class="form-control" rows="5"></textarea>
                            </div>
                        </div>
                    <div class="row">
                            <div class="form-group col offset-1">
                                <label >评论服务</label>
                                <textarea class="form-control" rows="5"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-3 offset-9">
                        <input type="submit" class="btn btn-primary btn-block text-white" value="发表评论">
                    </div>
                </div>
            </form>
        </div>
        <div class="card-footer"></div>
    </div>
</div>
<script src="${root}/static/lib/jquery/jquery.js"></script>
<script src="${root}/static/lib/bootstrap/js/bootstrap.js"></script>
</body>
</html>
