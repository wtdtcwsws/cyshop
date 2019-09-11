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

    <style>
        .body{
            background-image: url("${root}/static/image/背景图.jpg");
            background-size: cover;
            background-repeat: round;
        }

        .error{
            color: red;
        }

        .visible-error{
            margin-top: 5px;
            font-family: 黑体;
            font-weight: lighter;
        }

        .form-title{
            padding-top: 6px;
            font-family: 黑体;
        }

        .form-title span{
            color: red;
        }

        input{
            font-family: 楷体;
            font-size: 16px;
        }


    </style>
</head>
<body class="body">
    <div class="card ml-auto mr-auto mt-5" style="width: 1200px;background-color: rgba(255,255,255,0.3)">
        <div class="card-body">

            <form id="form">
                <div>
                    <%--商品名称设置--%>
                    <div class="row border-bottom">
                        <div class="col-7 offset-3 row mt-3">
                            <div class="col-2 form-title" style="font-size: 15px">
                                <span>*</span>
                                <table>商品名称</table>
                            </div>
                            <div class="col-6">
                                <input type="text" class="form-control" placeholder="商品名称" style="height: 35px" name="name">
                                <%--下面的说明--%>
                                <div class="mt-1 mb-2" style="font-size: 13px;color: darkgray">
                                    商品名称的说明
                                </div>
                            </div>
                            <span class="visible-error"></span>
                        </div>
                    </div>
                    <%--商品分类设置--%>
                    <div class="row border-bottom">
                        <div class="col-7 offset-3 row mt-3">
                            <div class="col-2 form-title" style="font-size: 15px">
                                <span>*</span>
                                <table>商品分类</table>
                            </div>
                            <div class="col-9 row ml-0"  style="font-size: 13px">
                                <div class="mr-2">
                                    <select class="btn btn-info"  style="font-size: 12px">
                                        <option>请选择商品的分类</option>
                                        <option>食品</option>
                                        <option>数码</option>
                                    </select>
                                    <div class="mt-1 mb-2 text-center" style="font-size: 13px;color: darkgray">
                                        商品一级分类
                                    </div>
                                </div>

                                <div class="mr-2">
                                    <select class="btn btn-info" style="font-size: 12px">
                                        <option>请选择商品的分类</option>
                                        <option>食品</option>
                                        <option>数码</option>
                                    </select>
                                    <div class="mt-1 mb-2 text-center" style="font-size: 13px;color: darkgray">
                                        商品二级分类
                                    </div>
                                </div>

                                <div>
                                    <select class="btn btn-info"  style="font-size: 12px">
                                        <option>请选择商品的分类</option>
                                        <option>食品</option>
                                        <option>数码</option>
                                    </select>
                                    <div class="mt-1 mb-2 text-center" style="font-size: 13px;color: darkgray">
                                        商品三级分类
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <%--商品介绍设置--%>
                    <div class="row border-bottom">
                        <div class="col-7 offset-3 row mt-3">
                            <div class="col-2 form-title" style="font-size: 15px">
                                <span>*</span>
                                <table>商品介绍</table>
                            </div>
                            <div class="col-6">
                                <textarea class="form-control"></textarea>
                                <%--下面的说明--%>
                                <div class="mt-1 mb-2" style="font-size: 13px;color: darkgray">
                                    商品的详细介绍
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--提交按钮--%>
                    <div class="row border-bottom pt-3 pb-2">
                        <div class="col-2 offset-4">
                            <input type="submit" class="btn btn-info btn-block" value="提交">
                        </div>
                        <div class="col-2">
                            <input type="submit" class="btn btn-info btn-block" value="取消">
                        </div>
                    </div>

                </div>
            </form>

        </div>
    </div>
    <script src="${root}/static/lib/jquery/jquery.js"></script>
    <script src="${root}/static/lib/bootstrap/js/bootstrap.js"></script>
    <script src="${root}/static/lib/jquery-validation/jquery.validate.js"></script>


    <script>

        var validator = $('#form').validate({

            errorElement:'span',
            errorPlacement:function(error,input){
                input.parent().next().append(error);

            },
            success: function(error){
                error.html('<i class="fa fa-check success" style="color: green"></i>');

            },

            rules:{
                name:{
                    required:true
                }
            },
            messages:{
                name:{
                    required:'<i class="fa fa-remove"></i>输入不能为空'
                }
            }
        })

    </script>
</body>
</html>
