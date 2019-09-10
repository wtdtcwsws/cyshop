<%--
  商品项展示
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/10 0010
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品项展示</title>
    <link rel="stylesheet" href="${root}/static/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${root}/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
    <div class="card" style="width: 18rem;" >
        <%--此处图片规格会自适应宽高比例，只需更改图片名即可--%>
        <img src="${root}/static/image/img_nature_wide.jpg" class="card-img-top" alt="图片加载失败">
        <%--内容--%>
        <div class="card-body p-3">
            <%--价格应为查询出的数据--%>
            <h5 class="text-danger card-title">￥6199.00<small class="bg-danger text-white ml-1 pl-1 pr-1">包邮</small></h5>
            <%--商品名称应为查询出的数据--%>
            <p class="card-text">唐白虎真迹，油墨山水画</p>
            <%--fa-spin 旋转图标--%>
            <div class="card-text mt-2 text-danger row">
                <p class="mt-2 mb-0 col-7">cy官方商城</p>
                <p class="col-5 mb-0"><i class="fa fa-heart fa-spin fa-2x pull-right"></i></p>
            </div>
        </div>
    </div>
</body>
</html>
