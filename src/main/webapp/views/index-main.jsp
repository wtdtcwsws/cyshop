<%--
  Created by IntelliJ IDEA.
  User: 罗海
  Date: 2019/9/23
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    String account = request.getParameter("account");
    String password = request.getParameter("password");

    if (account.equals("admin") && password.equals("123456")){
        request.getRequestDispatcher("/views/index.jsp").forward(request,response);
    }

%>
<html>
<head>

    <title>雏鹰商城后台系统登录</title>
    <link rel="stylesheet" type="text/css" href="${root}/static/lib/font-awesome/css/font-awesome.css"/>
    <link rel="stylesheet" type="text/css" href="${root}/static/lib/bootstrap/css/bootstrap.css"/>
</head>


<style>
    .luohai{
        background-image: url("${root}/static/image/背景图.jpg");
        background-size: cover;
        background-repeat: round;
    }
</style>
<body class="luohai">

    <div class="card" style="height: 391px;width: 500px;margin: auto;margin-top: 80px;background-color: rgba(255 255 255 0)">
        <div class="card-header">
            登录
        </div>
        <form id="form" action="index-main.jsp">
            <div class="card-body">

                <div class="form-group">
                    <label for="exampleInputEmail1">账号</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" name="account" placeholder="请输入管理员账号">
                    <span></span>
                </div>

                <div class="form-group">
                    <label for="exampleInputEmail2">密码</label>
                    <input type="password" class="form-control" id="exampleInputEmail2" name="password" placeholder="请输入管理员密码">
                    <span></span>
                </div>

                <span style="font-size: 10px;color: #10707f">注意：此登录为后台管理唯一登录，需要使用唯一账号密码，请谨慎操作！</span>
            </div>
            <div class="card-footer">

                <button type="button" class="btn btn-primary btn-block mt-2">登录</button>
                <div class="mt-3">
                    <a href="#" class="ml-4">
                    忘记密码？
                    </a>
                    <a class="pull-right mr-4" href="#">
                        修改密码
                    </a>
                </div>
            </div>
        </form>

    </div>

<script src="${root}/static/lib/jquery/jquery.js"></script>
<script src="${root}/static/lib/bootstrap/js/bootstrap.js"></script>
<script src="${root}/static/lib/jquery-validation/jquery.validate.js"></script>
<script src="${root}/static/js/lh/lh.js"></script>
</body>
</html>
