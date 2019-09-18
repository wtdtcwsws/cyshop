<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="animated  fadeIn">
	<h4>退货/款列表<small class="text-muted"> 商城所有退货/款单索引及管理</small></h4>
	<hr>
	<div class="card">
		<div class="card-header">
			<div class="row ">
				<div class="col-2">
					<i class="fa fa-align-justify"></i> 退货/款列表
				</div>
				<div class="controls col-5 offset-5 mb-2">
					<div class="input-group ">
						<input class="form-control form-control-sm col-3" id="appendedInputButtons" size="4" type="text" placeholder="搜索词...">

						<span class="input-group-append ">
							<button class="btn btn-secondary btn-sm " type="button">搜索</button>
						</span>
					</div>
				</div>
				<div class="pl-3 pr-3 col-12">
					<div class="alert alert-warning mb-0" role="alert">
						<ul class="mb-0 p-0" style="list-style: none;">
							<li>1、若退款金额非零时，卖家审核通过后，视为同意退款，平台确认后，由平台处理退款到用户账号余额或按支付原路返回</li>
							<li>2、若退款金额为零时且相关商品已经发货，卖家同意退货时，卖家需要确认收到买家发回的货物之后，再进入平台退款流程</li>
							<li>3、若退款金额为零时且相关商品已经发货，卖家同意退货时，如果有运费，运费问题需要卖家与用户协商</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="card-body">
			<table class="table table-responsive-sm table-bordered text-center">
				<thead>
					<tr>
						<th>编号</th>
						<th>订单编号</th>
						<th>商品名称</th>
						<th>商品数量(个)</th>
						<th>退款金额(￥)</th>
						<th>买家账号名</th>
						<th>申请日期</th>
						<th>退货/款原因</th>
						<th>操作</th>
						<th>查看详情</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="refundOrReturnItem" items="${refundOrReturnItemVOs}" varStatus="status">
					<tr>
						<td>
							${refundOrReturnItem.id}
						</td>
						<td>
							${refundOrReturnItem.orderId}
						</td>
						<td>${refundOrReturnItem.spuName}</td>
						<td>${refundOrReturnItem.nums}</td>
						<td>${refundOrReturnItem.count}</td>
						<td>${refundOrReturnItem.memberName}</td>
						<td>
							<f:formatDate value="${refundOrReturnItem.creatTime}" pattern="yyyy/MM/dd"/>
						</td>
						<td>
								${refundOrReturnItem.reason}
						</td>
						<td class="pt-1 pb-1">
							<select class="custom-select" data-id="${refundOrReturnItem.id}" data-value="${refundOrReturnItem.id}">
							<c:choose>
								<c:when test="${refundOrReturnItem.status eq '-1'}">
									<option selected value="-1">已撤销</option>
									<option value="0">未处理</option>
									<option value="1">已通过</option>
									<option value="2">已完成</option>
								</c:when>
								<c:when test="${refundOrReturnItem.status eq '1'}">
									<option value="-1">已撤销</option>
									<option value="0">未处理</option>
									<option selected value="1">已通过</option>
									<option value="2">已完成</option>
								</c:when>
								<c:when test="${refundOrReturnItem.status eq '2'}">
									<option value="-1">已撤销</option>
									<option value="0">未处理</option>
									<option value="1">已通过</option>
									<option selected value="2">已完成</option>
								</c:when>
								<c:otherwise>
										<option value="-1">已撤销</option>
										<option selected value="0">未处理</option>
										<option value="1">已通过</option>
										<option value="2">已完成</option>
								</c:otherwise>
							</c:choose>
							</select>
						</td>
						<td class="pt-1 pb-1">
							<a class="btn btn-light btn-sm" data-toggle="ajaxLoad" data-target="#ui-view" role="button" href="refundOrReturnOrder?method=lookReturnOrder&OI=${status.index} ">
                                查看详情
							</a>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			<nav aria-label="Page navigation example">
				<ul class="pagination justify-content-center">
					<li class="page-item disabled">
						<a class="page-link" href="#" tabindex="-1" aria-disabled="true">首页</a>
					</li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item">
						<a class="page-link" href="#">尾页</a>
					</li>
				</ul>
			</nav>
		</div>
	</div>
</div>
<script src="${root}/static/js/zhy/returnListStatus-ajax.js"></script>
