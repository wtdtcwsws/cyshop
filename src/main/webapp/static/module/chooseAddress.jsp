<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/10
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <link rel="stylesheet" href="${roo}/static/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${roo}/static/lib/font-awesome/css/font-awesome.css">
    <style>
        /*div{*/
            /*border: 1px red solid;*/
        /*}*/
        .adr{
            border: 3px gray dashed;
            width: 250px;
        }
        .adr:hover,.adr:active{
            border: 3px palevioletred dashed;
            width: 250px;
        }
    </style>
    <title>选择收货地址</title>
</head>
<body>
<h4>选择收货地址</h4>
<div class="row m-auto">
    <div class="adr p-0 mr-3">
        <h6 class="m-0 p-0">四川成都（吴桐收）</h6>
        <span>锦江 合江亭 西部国际金融中心2号楼丰巢快递</span>
    </div>
    <div class="adr p-0  mr-3">
        <h6 class="m-0 p-0">四川成都（吴桐收）</h6>
        <span>锦江 合江亭 西部国际金融中心2号楼丰巢快递</span>
    </div>
    <div class="adr p-0  mr-3">
        <h6 class="m-0 p-0">四川成都（吴桐收）</h6>
        <span>锦江 合江亭 西部国际金融中心2号楼丰巢快递</span>
    </div>
</div>



<script src="${root}/static/lib/jquery/jquery.js"></script>
<script src="${root}/static/lib/bootstrap/js/bootstrap.js"></script>

</body>
</html>
