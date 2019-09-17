<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="animated  fadeIn">
	<h4>订单详细 <small class="text-muted"> 订单详细信息展示</small></h4>
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
			<a class="btn  btn-outline-primary btn-sm" data-toggle="ajaxLoad" data-target="#ui-view" role="button" href="/gy/order-list.html">返回订单列表</a>
		</div>
		<div class="card-body">
			<table  class="table table-responsive-sm table-bordered text-left">
						<thead>
							<tr>
								<th>订单信息</th>
							</tr>
						</thead>
					<tbody>
						<tr>
							<td>
								<div>收货地址：高勇,15390452557,四川省 成都市 锦江区 西部国际金融中心2号楼 ,611230</div>
								<div>买家留言：</div>
								<div>订单编号：620075715183092248</div>
							</td>
						</tr>
					</tbody>
			</table>
			<table class="table table-responsive-sm table-bordered text-center">
				<thead>
					<tr>
						<th>商品</th>
						<th>单价</th>
						<th>数量</th>
						<th>优惠</th>
						<th>订单状态</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="5" class="text-left">订单号：620075715183092248</td>
					</tr>
					<tr>
						<td>
							<img />
							<span>魏无羡</span>
						</td>
						<td>15.50</td>
						<td>2</td>
						<td>
						</td>
						<td rowspan="3"class="text-center">未付款</td>
					</tr>
					<tr>
						<td>
							<img />
							<span>蓝忘机</span>
						</td>
						<td>15.50</td>
						<td>2</td>
						<td>
						</td>
					</tr>
					<tr>
						<td>
							<img />
							<span>姜云飞</span>
						</td>
						<td>15.50</td>
						<td>2</td>
						<td>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="row">
				<!-- 因为这里显示的仅仅是某一个订单的详细信息，所以不需要翻页 -->
					<!-- <ul class="pagination">
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
					</ul> -->
					<div class="align-items-end">
					<a class="btn  btn-outline-primary btn-sm" data-toggle="ajaxLoad" data-target="#ui-view" role="button" href="/gy/订单列表.html">返回订单列表</a>
					</div>
				
			</div>
		</div>
	</div>
</div>
