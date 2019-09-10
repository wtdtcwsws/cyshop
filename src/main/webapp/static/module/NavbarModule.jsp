<%--
  导航条模板
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/10 0010
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>导航条模板</title>
    <link rel="stylesheet" href="${root}/static/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${root}/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<nav class="navbar navbar-expand-sm navbar-light bg-light">
    <div class="container">
            <ul class="nav navUl">
                <%
                    // 此处用 jstl 判断替换 jsp 并判断 session 中的登陆状态变量是否为空
                    if(1 == 1){
                %>
                        <li class="nav-item"><a class="nav-link pr-0 text-secondary" href="javascript:;">请登录</a></li>
                        <li class="nav-item"><a class="nav-link pr-0 text-secondary" href="javascript:;">注册新账号</a></li>
                        <li class="nav-item"><a class="nav-link text-secondary" href="javascript:;">忘记密码？</a></li>
                <%
                    // 此处用 jstl 判断替换 jsp
                    }else{
                %>
                        <li class="nav-item" style="padding-top: 8px;">欢迎</li>
                        <%-- a标签中应用 el 表达式 获取登陆的账号名 --%>
                        <li class="nav-item pr-0"><a class="nav-link pt-0" href="javascript:;">。。。</a></li>
                        <li class="nav-item"><a class="nav-link" href="javascript:;">退出</a></li>
                <%
                    // 此处用 jstl 判断替换 jsp
                    }
                %>
            </ul>
            <ul class="nav justify-content-end navUl">
                <li class="nav-item"><a class="nav-link pr-0 text-secondary" href="javascript:;">我的商城</a></li>
                <li class="nav-item"><a class="nav-link pr-0 text-secondary" href="javascript:;"><i class="fa fa-shopping-cart pr-1 text-danger"></i>购物车</a></li>
                <li class="nav-item"><a class="nav-link pr-0 text-secondary" href="javascript:;">收藏夹</a></li>
            </ul>
    </div>
</nav>

<script src="<%=request.getContextPath() %>/static/lib/bootstrap/js/bootstrap.js"></script>
</body>
</html>
