<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<table class="table table-bordered">
<thead>
<tr>
    <td class="text-center">订单编号</td>
    <td class="text-center">商品图片</td>
    <td class="text-center">商品名称</td>
    <td class="text-center">下单时间</td>
    <td class="text-center">金额</td>
    <td class="text-center">状态</td>
    <td class="text-center">操作</td>
</tr>
</thead>
<tbody>
<c:forEach var="orderItemVO" items="${orderItemVOs}" varStatus="status">
    <tr>
    <td class="text-center">
    ${orderItemVO.id}
    </td>
    <%----------------------此处跳转商品详情页面----------------------%>
    <td class="text-center"><a href="javascript:;"><img width="60px" src="${root}${orderItemVO.getUrl()}" alt="Xitefun Causal Wear Fancy Shoes" title="Xitefun Causal Wear Fancy Shoes" class="img-thumbnail"></a></td>
    <td class="text-center">
    <%--<a href="product.html"></a>--%>
    <a href="javascript:;">${orderItemVO.getName()}</a>
    </td>
    <td class="text-center">
    <%--<a href="product.html">Emasa rumas gacem</a>--%>
    <f:formatDate value="${orderItemVO.getCreat_time()}" pattern="yyyy/MM/dd"/>
    <br />
    </td>
    <td class="text-center">
    ${orderItemVO.getPayment()}
    </td>
    <td class="text-center" >
    <c:choose>
        <c:when test="${orderItemVO.getStatus() eq '0'}">
            已取消
        </c:when>
        <c:when test="${orderItemVO.getStatus() eq '1'}">
            未付款
        </c:when>
        <c:when test="${orderItemVO.getStatus() eq '2'}">
            已付款
        </c:when>
        <c:when test="${orderItemVO.getStatus() eq '3'}">
            已发货
        </c:when>
        <c:otherwise>
            已收货
        </c:otherwise>
    </c:choose>
    </td>
    <td class="text-center">
    <div class="btn-group">
    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">选择操作
    <span class="caret"></span>
    </button>
    <ul class="dropdown-menu" role="menu">
    <li><a href="/front/OrderInfo?id=${orderItemVO.getId()}">详情</a></li>
    <li><a id="${orderItemVO.getId()}" href="javascript:;" data-delete>删除</a></li>
    </ul>
    </div>
    </td>
    </tr>
</c:forEach>
</tbody>
</table>