<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="animated fadeIn">
	<div class="row">
		<div class="pl-3">
			<a class="btn  btn-primary " style="margin-bottom: 15px ;border-radius:50%;" role="button" href="refundOrReturnItem?method=findReturnItem" data-toggle="ajaxLoad" data-target="#ui-view"><i class="fa fa-arrow-left"></i></a>
		</div>
		<div class="col-8">
			<h4 >退货/款详情</h4>
		</div>
	</div>
	<form id="form" class="form-horizontal" action="/views/refundOrReturnOrder?method=updateStatus&ROI=${refundOrReturnItemVO.getOrderId()}" method="post">
		<%--<input type="hidden" name="method" value="updateStatus">--%>
		<%--<input type="hidden" name="ROI" value="${refundOrReturnItemVO.getId()}">--%>
	<div class="card">
		<div class="card-header">
			<strong>退货/款单明细</strong></div>
		<div class="card-body">
				<div class="form-group row">
					<label class="col-md-2 col-form-label offset-1 text-right" >订单编号：</label>
					<div class="col-md-3">
						<!-- 订单编号 -->
						<label class="col-form-label">${refundOrReturnItemVO.getOrderId()}</label>
					</div>
					<label class="col-md-2 col-form-label text-right" >买家账号名：</label>
					<div class="col-md-3">
						<label class="col-form-label">${refundOrReturnItemVO.getMemberName()}</label>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-md-2 col-form-label offset-1 text-right">商品名称：</label>
					<div class="col-md-3">
						<label class="col-form-label">${refundOrReturnItemVO.getSpuName()}</label>
					</div>
					<label class="col-md-2 col-form-label text-right" >申请日期：</label>
					<div class="col-md-3">
						<label class="col-form-label">
							<f:formatDate value="${refundOrReturnItemVO.getCreatTime()}" pattern="yyyy/MM/dd"/>
						</label>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-md-2 col-form-label offset-1 text-right">商品数量(个)：</label>
					<div class="col-md-3">
						<label class="col-form-label">${refundOrReturnItemVO.getNums()}</label>
					</div>
					<label class="col-md-2 col-form-label text-right"><i class="text-danger " style="font: bold 14px/20px tahoma, verdana;">*</i>退款金额(￥)：</label>
					<div class="col-md-3">
						<input class="form-control col-md-3" id="" type="text" name="nn" placeholder="${refundOrReturnItemVO.getCount()}" >
					</div>
				</div>
				<div class="form-group row">
					<label class="col-md-2 col-form-label offset-1 text-right">退货/款原因：</label>
					<div class="col-md-4">
						 <textarea class="form-control col-md-8" placeholder="" required disabled>${refundOrReturnItemVO.getReason()}</textarea>
					</div>
				</div>
				<div class="form-group row pt-3">
					<label class="col-md-2 col-form-label offset-1 text-right">操作：</label>
					<div class="col-md-4">
						<select class="form-control form-control-sm col-4 " id="selectStatus" name="selectStatus">
							<c:choose>
								<c:when test="${refundOrReturnItemVO.getStatus() eq '-1'}">
									<option selected value="-1">已撤销</option>
									<option value="0">未处理</option>
									<option value="1">已通过</option>
									<option value="2">已完成</option>
								</c:when>
								<c:when test="${refundOrReturnItemVO.getStatus() eq '1'}">
									<option value="-1">已撤销</option>
									<option value="0">未处理</option>
									<option selected value="1">已通过</option>
									<option value="2">已完成</option>
								</c:when>
								<c:when test="${refundOrReturnItemVO.getStatus() eq '2'}">
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
					</div>
				</div>
		</div>
		<div class="card-footer">
			<div class="offset-5 row">
				<input id="btn" class="btn btn-primary col-1" type="button" value="确定"/>
			</div>
		</div>
	</div>
	</form>
</div>
<script src="${root}/static/js/zhy/returnDetailsForm-ajax.js"></script>