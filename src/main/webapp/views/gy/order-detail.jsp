<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
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
                                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">确认发货</button>
                                    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">快递单号录入</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <form>
                                                        <div class="form-group">
                                                            <label for="recipient-name" class="col-form-label">请输入快递单号:</label>
                                                            <input type="text" class="form-control" id="recipient-name">
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="message-text" class="col-form-label">备注:</label>
                                                            <textarea class="form-control" id="message-text"></textarea>
                                                        </div>
                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                                                    <button type="button" class="btn btn-primary sure"  data-dismiss="modal" data-totol="${view.orderId}">确定</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%--<div><a class="sure btn btn-primary" style="color: red" href="javascript:;"  data-totol="${view.orderId}">确认发货</a></div>--%>
                                    <div><a class="cancel btn btn-primary mt-1" href="javascript:;"  data-totol="${view.orderId}">取消订单</a></div>
                                    <%--<div><a  class="del btn btn-primary  mt-1" href="javascript:;"  data-totol="${view.orderId}">删除订单</a></div>--%>
                                </c:when>
                                <c:when test="${view.status==0}">
                                    <div><a  class="del btn btn-primary" href="javascript:;"  data-totol="${view.orderId}">删除订单</a></div>
                                </c:when>
                                <c:otherwise>
                                    <div><a class="cancel btn btn-primary" href="javascript:;"  data-totol="${view.orderId}">取消订单</a></div>
                                    <%--<div><a  class="del btn btn-primary  mt-1" href="javascript:;"  data-totol="${view.orderId}">删除订单</a></div>--%>
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
<script src="${root}/static/js/gy/ajaxForOderDetail.js" charset="Big5" type="text/javascript" language="javascript"></script>