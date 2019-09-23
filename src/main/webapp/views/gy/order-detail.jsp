<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="animated  fadeIn">
    <h4>订单详细
        <small class="text-muted"> 订单详细信息展示</small>
    </h4>
    <hr>
    <div class="card">
        <div class="card-header">
            <div class="row ">
                <div class="col-2">
                    <i class="fa fa-align-justify">订单明细</i>
                </div>
            </div>
        </div>
        <div class="align-items-end">
            <a class="btn  btn-outline-primary btn-sm" data-toggle="ajaxLoad" data-target="#ui-view" role="button"
               href="orderServlet/order">返回订单列表</a>
        </div>
        <div class="card-body">
            <table class="table table-responsive-sm table-bordered text-left">
                <thead>
                <tr>
                    <th>订单信息</th>
                </tr>
                </thead>
            </table>
            <table class="table table-responsive-sm table-bordered text-center">
                <thead>
                <tr>
                    <th>商品</th>
                    <th>单价</th>
                    <th>数量</th>
                    <th>订单状态</th>
                    <th>订单操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td colspan="5" class="text-left">订单号：${id}</td>
                </tr>
                <%--循环演示商品详细信息--%>
                <c:forEach var="view" items="${views}">
                    <tr>
                        <td>
                            <img/>
                            <span>${view.sku}</span>
                        </td>
                        <td>${view.price}</td>
                        <td>${view.num}</td>
                        <td>
                            <c:choose>
                                <c:when test="${view.status==0}">
                                    <div>已取消</div>
                                </c:when>
                                <c:when test="${view.status==1}">
                                    <div>未付款</div>
                                </c:when>
                                <c:when test="${view.status==2}">
                                    <div>已付款</div>
                                </c:when>
                                <c:when test="${view.status==3}">
                                    <div>已发货</div>
                                </c:when>
                                <c:when test="${view.status==4}">
                                    <div>已收货</div>
                                </c:when>
                            </c:choose>
                        </td>
                        <td>
                            <c:choose>
                                <c:when test="${view.status==2}">
                                    <div><a class="sure" style="color: red" href="javascript:;"  data-totol="${view.orderId}">确认发货</a></div>
                                    <div><a class="cancel" href="javascript:;"  data-totol="${view.orderId}">取消订单</a></div>
                                    <div><a  class="del" href="javascript:;"  data-totol="${view.orderId}">删除订单</a></div>
                                </c:when>
                                <c:when test="${view.status==4||view.status==0}">
                                    <div><a  class="del" href="javascript:;"  data-totol="${view.orderId}">删除订单</a></div>
                                </c:when>
                                <c:otherwise>
                                    <div><a class="cancel" href="javascript:;"  data-totol="${view.orderId}">取消订单</a></div>
                                    <div><a  class="del" href="javascript:;"  data-totol="${view.orderId}">删除订单</a></div>
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div class="row">
                <div class="align-items-end">
                    <a class="btn  btn-outline-primary btn-sm" data-toggle="ajaxLoad" data-target="#ui-view"
                       role="button" href="orderServlet/order">返回订单列表</a>
                </div>

            </div>
        </div>
    </div>
</div>
<script src="${root}/static/js/gy/ajaxForOderDetail.js"></script>