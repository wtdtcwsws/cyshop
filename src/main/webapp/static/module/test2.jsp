<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/10
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="${root}/static/lib/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="${root}/static/lib/font-awesome/css/font-awesome.css" rel="stylesheet">
    <title>登录</title>
</head>
<body>
<div class="container">
    <div class="card m-auto" style="width: 500px">
        <div class="card-header bg-danger text-white">雏鹰商城</div>
        <div class="card-body">
            <form class="form-signin">
                <img class="mb-4" src="${root}/static/image/logo.png" alt="" width="72" height="72">
                <label for="account" class="sr-only">账号</label>
                <input id="account" name="account" class="form-control mb-5" placeholder="用户名/手机号/邮箱" required="" autofocus="">
                <label for="inputPassword" class="sr-only">密码</label>
                <input type="password" name="password" id="inputPassword" class="form-control mb-5" placeholder="密码" required="">
                <div class="checkbox mb-3">
                    <label>
                        <input type="checkbox" value="remember-me"> 记住密码
                    </label>
                </div>
                <button class="btn btn-lg btn-danger btn-block" type="submit">登录</button>

            </form>
        </div>
        <div class="card-footer">
            <p>
                <span> 没有账号，点击 <a href="#">注册</a></span>
                <span class="pull-right"><a href="#">忘记密码</a> </span>
            </p>
        </div>
    </div>

</div>
<script src="${root}/static/lib/jquery/jquery.js"></script>
<script src="${root}/static/lib/bootstrap/js/bootstrap.js"></script>
</body>
</html>
