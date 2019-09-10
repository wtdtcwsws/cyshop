<%--
  Created by IntelliJ IDEA.
  User: 罗海
  Date: 2019/9/10
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>表单模板</title>
    <%--引入外接css--%>
    <link rel="stylesheet" href="${root}/static/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${root}/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
    <form>
        <div>

            <div class="row border-bottom">
                <div class="col-4 offset-3 row mt-3">
                    <div class="col-3" style="font-size: 23px">
                        <span>*</span>
                        <table>商品名称</table>
                    </div>
                    <div class="col-9">
                        <input type="text" class="form-control" placeholder="商品名称" style="height: 51px">
                        <%--下面的说明--%>
                        <div class="mt-1 mb-2">
                            商品名称的说明
                        </div>
                    </div>
                </div>
            </div>

            <div class="row border-bottom">
                <div class="col-5 offset-3 row mt-3">
                    <div class="col-2" style="font-size: 23px">
                        <span>*</span>
                        <table>商品分类</table>
                    </div>
                    <div class="col-9 row ml-4">
                        <div class="mr-3">
                            <select class="btn btn-info">
                                <option>请选择商品的分类</option>
                                <option>食品</option>
                                <option>数码</option>
                            </select>
                            <div class="mt-1 mb-2">
                                商品一级分类
                            </div>
                        </div>

                        <div class="mr-3">
                            <select class="btn btn-info">
                                <option>请选择商品的分类</option>
                                <option>食品</option>
                                <option>数码</option>
                            </select>
                            <div class="mt-1 mb-2">
                                商品二级分类
                            </div>
                        </div>

                        <div>
                            <select class="btn btn-info">
                                <option>请选择商品的分类</option>
                                <option>食品</option>
                                <option>数码</option>
                            </select>
                            <div class="mt-1 mb-2">
                                商品三级分类
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="row border-bottom">
                <div class="col-4 offset-3 row mt-3">
                    <div class="col-3" style="font-size: 23px">
                        <span>*</span>
                        <table>商品介绍</table>
                    </div>
                    <div class="col-9">
                        <textarea class="form-control"></textarea>
                        <%--下面的说明--%>
                        <div class="mt-1 mb-2">
                            商品的详细介绍
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </form>

    <script src="${root}/static/lib/jquery/jquery.js"></script>
    <script src="${root}/static/lib/bootstrap/js/bootstrap.js"></script>
    <script src="${root}/static/lib/jquery-validation/jquery.validate.js"></script>
</body>
</html>
