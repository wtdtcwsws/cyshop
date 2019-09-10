<%--
  热推模板
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/10 0010
  Time: 12:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>热推广告</title>
    <link rel="stylesheet" href="${root}/static/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${root}/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="card" style="width: 18rem;" >
    <div class="card-header pl-2 pr-2">
        <h5 class="card-title mb-0">掌柜推荐<small class="border pull-right">广告</small></h5>
    </div>
    <%--此处图片规格会自适应宽高比例，只需更改图片名即可--%>
    <img src="${root}/static/image/img_nature_wide.jpg" class="card-img-top" alt="图片加载失败">
    <%--内容--%>
    <div class="card-body p-2">
        <%--价格应为查询出的数据--%>
        <h5 class="text-danger card-title mb-0">￥6199.00<small class="text-secondary pull-right">销量:此处为查询的数据</small></h5>
    </div>
</div>
</body>
</html>
