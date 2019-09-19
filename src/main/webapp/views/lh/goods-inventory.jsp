<%@ page import="com.cyxz.cyshop.service.SkuService" %>
<%@ page import="java.util.List" %>
<%@ page import="com.cyxz.cyshop.domain.Sku" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%

	SkuService skuService = new SkuService();
	List<Sku> commodity = skuService.selectSku();

%>


<div class="card">

	<div class="card-header p-0">
		<div class="alert alert-danger alert-dismissible m-0" role="alert">
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		  <strong>操作说明：</strong>用于查看库存数量以及修改库存数量
		</div>
	</div>
	<div class="card-body">

		<!-- 表主体上面查询部分 -->
		<div class="row">
			<div class="col-4">
				<input class="form-control" type="text" placeholder="请输入需要查询的信息">
			</div>
			<div class="col-1">
				<button class="btn btn-pill btn-block btn-secondary" type="button">查找</button>
			</div>
		</div>	
		<!-- 表主体下面表格部分	 -->
		<div class="mt-2">
		  <table class="table table-responsive-sm table-bordered text-center table-hover">
			<thead>
			  <tr>
				<th>编号</th>
				<th>商品名</th>
				<th>商品sku ID</th>
				<th>商品描述</th>
				<th>价格</th>
				<th>库存量</th>
				<th>编辑/操作</th>
			  </tr>
			</thead>
			<!-- 表格内容 -->
		  <form>
			<tbody>
			<%
				int num = 0;
				String nums;
				for (Sku sku : commodity){
				    num++;
				    nums = "cy000" + num;
			%>
			  <tr>
				<td><%=nums %></td>
				<td><%=sku.getName() %></td>
				<td data-column="id"><%=sku.getModel_id() %></td>
				<td>暂时未知</td>
				<td><%=sku.getPrice() %></td>
				<td data-column="stocks">
					<div data-column="stock">
						<%=sku.getStock() %>
					</div>
					<div data-column="hint" style="color: red;font-size: 13px">

					</div>
				</td>
				<td>
					<button class="btn btn-primary" type="button" data-click="btn-inventory">
						<i class="fa fa-pencil mr-1"></i>修改商品库存
					</button>
				</td>
			  </tr>
			  <%}%>
			</tbody>
		</form>
		  </table>
		  <!-- 表格下部分分页条 -->
		  <div class="pull-right">
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
				  <a class="page-link" href="#">3</a>
				</li>
				<li class="page-item">
				  <a class="page-link" href="#">4</a>
				</li>
				<li class="page-item">
				  <a class="page-link" href="#">下一页</a>
				</li>
			  </ul>
		  </div>
		</div>
			
	</div>
	
</div>

<script src="${root}/static/js/lh/incertory.js"></script>