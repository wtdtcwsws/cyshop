<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<div class="animated  fadeIn">
    <h4>订单列表
        <small class="text-muted"> 订单列表展示</small>
    </h4>
    <hr>
    <div class="card">
        <div class="card-header">
            <div class="row ">
                <div class="col-2">
                    <i class="fa fa-align-justify">订单列表</i>
                </div>
                <div class="controls col-4 offset-6 ">
                    <div class="input-group ">
                        <input class="form-control form-control-sm col-3" id="appendedInputButtons" size="4" type="text"
                               placeholder="搜索词...">

                        <span class="input-group-append ">
							<button class="btn btn-secondary btn-sm " type="button">搜索</button>
						</span>
                    </div>
                </div>

            </div>
        </div>
        <a class="card-body">
            <table class="table table-responsive-sm table-bordered text-center">
                <thead>
                <tr>
                    <th></th>
                    <th>订单号</th>
                    <th>宝贝</th>
                    <th>原价格</th>
                    <th>邮费</th>
                    <th>实付款</th>
                    <th>交易状态</th>
                </tr>
                </thead>
                <c:forEach var="view" items="${orderViews}">
                    <tbody>
                    <tr>
                        <td>
                            <input class="btn  btn-outline-primary btn-sm" type="checkbox" value="">
                        </td>
                        <td>
                                ${view.id}
                        </td>
                        <td>
                            <img/>
                            <span>${view.productName}</span>
                        </td>
                        <td>${view.total_price}</td>
                            <%--这里判断下邮费，空的话默认是0，非空的话就是邮费数目--%>
                        <c:choose>
                            <c:when test="${view.post_price==null}">
                                <td>0</td>
                            </c:when>
                            <c:otherwise>
                                <td>${view.post_price}</td>
                            </c:otherwise>
                        </c:choose>
                        <td>${view.payment}</td>
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
                            <a data-toggle="ajaxLoad" data-target="#ui-view" role="button"
                               href="OrderDtail?order_id=${view.id}&status=${view.status}">订单详情</a>
                    </tr>
                    </tbody>
                </c:forEach>
            </table>
        </a>
        <ul class="pagination">
            <li class="page-item">
                <a class="page-link" href="javascript:;">上一页</a>
            </li>
            <li class="page-item active mr-1">
                <a class="page-link index" data-index = "1" href="javascript:;">1</a>
            </li>
            <li class="page-item  mr-1">
                <a class="page-link index" data-index = "2" href="javascript:;">2</a>
            </li>
            <li class="page-item   mr-1">
                <a class="page-link index" data-index = "3" href="javascript:;">3</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="javascript:;">下一页</a>
            </li>
        </ul>
    </div>
</div>
</div>
<%--<script src="static/js/gy/list.js"></script>--%>
