<%--
  Created by IntelliJ IDEA.
  User: 罗海
  Date: 2019/9/10
  Time: 10:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>表格模板</title>
    <%--引入外接css--%>
    <link rel="stylesheet" href="${root}/static/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${root}/static/lib/font-awesome/css/font-awesome.css">

    <style>

        .body{
            background-image: url("${root}/static/image/背景图.jpg");
            background-size: cover;
            background-repeat: round;
        }

        .button-one{
            background-color:rgb(237,250,252);
            color:rgb(22,97,109);
            height: 35px;
            width: 100px;
            font-size: 15px;
            font-family: 黑体;
            font-weight: lighter;
        }

    </style>

</head>
<body class="body">

        <table class="table table-bordered">
            <thead class="text-center">
            <tr>
                <th scope="col">操作</th>
                <th scope="col">id</th>
                <th scope="col">商品名称</th>
                <th scope="col">货号</th>
                <th scope="col">分类</th>
                <th scope="col">价格</th>
                <th scope="col">推荐</th>
                <th scope="col">新品</th>
            </tr>
            </thead>

            <tbody>

            <tr>

               <td colspan="8">

                    <div>

                        <input type="submit" class="btn btn-info btn-lg button-one" value="添加商品">
                        <input type="submit" class="btn btn-info btn-lg button-one" style="margin-left: 30px;" value="批量删除">

                    </div>

               </td>

            </tr>

            <tr class="text-center">
                <td scope="row" class="p-0">
                    <form class="m-0 p-0">
                        <select class="btn btn-info p-0 m-0 mt-2" style="height: 30px;width: 70px;">
                            <option>设置</option>
                            <option>sdfa</option>
                            <option>463</option>
                        </select>
                    </form>
                </td>
                <td></td>
                <td>234</td>
                <td>仙人球多肉组合</td>
                <td>桌面绿植</td>
                <td>13.00</td>
                <td></td>
                <td></td>
            </tr>
            <tr class="text-center">
                <td scope="row" class="p-0">
                    <form class="m-0 p-0">
                        <select class="btn btn-info p-0 m-0 mt-2" style="height: 30px;width: 70px;">
                            <option>设置</option>
                            <option>sdfa</option>
                            <option>463</option>
                        </select>
                    </form>
                </td>
                <td></td>
                <td>234</td>
                <td>仙人球多肉组合</td>
                <td>桌面绿植</td>
                <td>13.00</td>
                <td></td>
                <td></td>
            </tr>
            <tr class="text-center">
                <td scope="row" class="p-0">
                    <form class="m-0 p-0">
                        <select class="btn btn-info p-0 m-0 mt-2" style="height: 30px;width: 70px;">
                            <option>设置</option>
                            <option>sdfa</option>
                            <option>463</option>
                        </select>
                    </form>
                </td>
                <td></td>
                <td>234</td>
                <td>仙人球多肉组合</td>
                <td>桌面绿植</td>
                <td>13.00</td>
                <td></td>
                <td></td>
            </tr>
            <tr class="text-center">
                <td scope="row" class="p-0">
                    <form class="m-0 p-0">
                        <select class="btn btn-info p-0 m-0 mt-2" style="height: 30px;width: 70px;">
                            <option>设置</option>
                            <option>sdfa</option>
                            <option>463</option>
                        </select>
                    </form>
                </td>
                <td></td>
                <td>234</td>
                <td>仙人球多肉组合</td>
                <td>桌面绿植</td>
                <td>13.00</td>
                <td></td>
                <td></td>
            </tr>

            </tbody>
        </table>

    <script src="${root}/static/lib/jquery/jquery.js"></script>
    <script src="${root}/static/lib/bootstrap/js/bootstrap.js"></script>
    <script src="${root}/static/lib/jquery-validation/jquery.validate.js"></script>

</body>
</html>
