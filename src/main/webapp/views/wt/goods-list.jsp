<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="animated fadeIn">

<div class="card">
<div class="card-header">
    商品列表
    <small>spu</small>
</div>
<div class="card-body">
<!-- 商品模型添加按钮 -->
<a class="btn  btn-outline-primary btn-sm" data-toggle="ajaxLoad" data-target="#ui-view" role="button"
   href="wt/add_goods.jsp"><i
        class="fa fa-plus"> 添加商品</i></a>
<hr>
<table class="table table-responsive-sm">
<thead>
<tr>
    <th>编号</th>
    <th>商品名称</th>
    <th>商品分类</th>
    <th>操作</th>
</tr>
</thead>
<tbody>
<c:forEach var="spu" items="${spus}">
    <tr>
        <td>${spu.id}</td>
        <td>${spu.spu_name}</td>
        <td>${spu.spu_description}</td>
        <td>
            <a href="javaScript:;" class="btn  btn-outline-primary btn-sm" data-toggle="ajaxLoad" data-target="#ui-view"
               role="button"><i class="fa fa-edit"></i>查看</a>
            <a href="wutong/w-add-nav-manage.html" class="btn  btn-outline-primary btn-sm" data-toggle="ajaxLoad"
               data-target="#ui-view" role="button"><i class="fa fa-edit"></i>编辑</a>
            <a href="waddroleManage.html" class="btn  btn-outline-primary btn-sm" data-toggle="modal"
               data-target="#smallModal"
               role="button"><i class="fa fa-trash" data-toggle="modal" data-target="#smallModal"></i>删除</a>
        </td>
    </tr>
</c:forEach>
    </tbody>
    </table>
    </div>
    </div>

    </div>
