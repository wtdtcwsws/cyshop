<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="animated  fadeIn">
	<h4>订单列表 <small class="text-muted"> 订单列表展示</small></h4>
	<hr>
	<div class="card">
		<div class="card-header">
			<div class="row ">
				<div class="col-2">
					<i class="fa fa-align-justify">订单列表</i>
				</div>
				<div class="controls col-4 offset-6 ">
					<div class="input-group ">
						<input class="form-control form-control-sm col-3" id="appendedInputButtons" size="4" type="text" placeholder="搜索词...">

						<span class="input-group-append ">
							<button class="btn btn-secondary btn-sm " type="button">搜索</button>
						</span>
					</div>
				</div>

			</div>
		</div>
		<div class="card-body">
			<table class="table table-responsive-sm table-bordered text-center">
				<thead>
					<tr>
						<th></th>
						<th>宝贝</th>
						<th>单价</th>
						<th>邮费</th>
						<th>商品操作</th>
						<th>实付款</th>
						<th>交易状态</th>
						<th>交易操作</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="13" class="text-left">
							<input class="btn  btn-outline-primary btn-sm" type="checkbox"value=""><span>全选</span>
							<a class="btn  btn-outline-primary btn-sm" data-toggle="ajaxLoad" data-target="#ui-view" role="button" href="javaScript:;"> 合并付款</a>
							<a class="btn  btn-outline-primary btn-sm" data-toggle="ajaxLoad" data-target="#ui-view" role="button" href="javaScript:;">
								合并代付
							</a>
						</td>
					</tr>
					<c:forEach var="order" items="${orders}">
						<tr>
							<td>
								<input class="btn  btn-outline-primary btn-sm" type="checkbox"value="">
							</td>
							<td>
								<img />
								<span>魏无羡、美女组合</span>
							</td>
							<td>${order.total_price}</td>
							<%--这里判断下邮费，空的话默认是0，非空的话就是邮费数目--%>
							<c:choose>
								<c:when test="${order.post_price==null}">
									<td>0</td>
								</c:when>
								<c:otherwise>
									<td>${order.post_price}</td>
								</c:otherwise>
							</c:choose>
							<td>
								<div>违规举报</div>
								<div>退运费险</div>
							</td>
							<td>${order.payment}</td>
							<td>
								<%--这里要判断订单状态以显示不同的内容--%>
								<c:choose>
									<c:when test="${order.status==0}">
										<div>已取消</div>
									</c:when>
									<c:when test="${order.status==1}">
										<div>未付款</div>
									</c:when>
									<c:when test="${order.status==2}">
										<div>已付款</div>
									</c:when>
									<c:when test="${order.status==3}">
										<div>已发货</div>
									</c:when>
									<c:when test="${order.status==4}">
										<div>已收货</div>
									</c:when>
								</c:choose>
									<a data-toggle="ajaxLoad" data-target="#ui-view" role="button" href="gy/order-detail.html?order_id=${order.id}&&status=${order.status}">订单详情</a>
							</td>
							<td>
								<div>立即付款</div>
								<div>找朋友帮忙付</div>
								<div>取消订单</div>
								<div>再次购买</div>
							</td>
						</tr>
					</c:forEach>
					
					
				</tbody>
			</table>
			<ul class="pagination">
				<li class="page-item">
					<a class="page-link" href="#">上一页</a>
				</li>
				<li class="page-item active">
					<a class="page-link" href="#">1</a>
				</li>
				<li class="page-item">
					<a class="page-link" href="#">2</a>
				</li>
				<li class="page-item">
					<a class="page-link" href="#">下一页</a>
				</li>
			</ul>			
			<!-- 模态框 -->
			<div class="modal fade " id="smallModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-modal="true"
			 style="padding-right: 16px; display: none;" aria-hidden="true">
				<div class="modal-dialog modal-sm" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">确认删除</h4>
							<button class="close" type="button" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
						</div>
						<div class="modal-body">
							<p>确认要删除吗</p>
						</div>
						<div class="modal-footer">
							<button class="btn btn-secondary" type="button" data-dismiss="modal">取消</button>
							<button class="btn btn-primary" type="button" data-dismiss="modal">确定</button>
						</div>
					</div>
					<!-- /.modal-content-->
				</div>
				<!-- /.modal-dialog-->
			</div>
		</div>
	</div>
</div>
