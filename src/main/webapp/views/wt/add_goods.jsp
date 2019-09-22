<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="animated fadeIn">
	<div class="row">
		<div class="col-1">
			<!-- 返回 -->
			<a class="btn  btn-primary " style="margin-bottom: 15px ;border-radius:50%;" role="button" href="wt/goods-list.jsp"
			 data-toggle="ajaxLoad" data-target="#ui-view"><i class="fa fa-arrow-left"></i></a>
		</div>
		<div class="col-8">
			<h4>商品添加 <small class="text-muted"> spu/sku添加 </small></h4>
		</div>
	</div>
	<div data-id="form" class="form-horizontal" >
		<div class="card">
			<div class="card-header">
				商品添加
				<small>表单</small>
			</div>

			<div class="card-body">
				<div class="card">
					<div class="card-header">
						<strong>商品添加</strong></div>
					<div class="card-body ">
						<div class="form-group row">
							<label class="col-md-2 col-form-label offset-1 text-right" ><i class="text-danger " style="font: bold 14px/20px tahoma, verdana;">*</i>
								商品名称 </label>
							<div class="col-md-4">
								<input class="form-control"  type="text" name="goods_name">
							</div>
						</div>
						<hr>
						<div class="form-group row">
							<label class="col-md-2 col-form-label offset-1 text-right"><i class="text-danger "
																						  style="font: bold 14px/20px tahoma, verdana;">*</i>
								商品分类 </label>
							<div class="col-md-3 row">
								<label class="col-5 col-form-label  text-right">
									一级分类 </label>
								<select class="form-control form-control-sm col" id="c1" name="catalog1">
									<!-- 循环一级分类 -->
									<c:forEach items="${catalog1}" var="c1">
										<option value="${c1.id}">${c1.name}</option>
									</c:forEach>
								</select>
							</div>
							<div class="col-md-3 row">
								<label class="col-5 col-form-label  text-right">
									二级分类 </label>
								<select class="form-control form-control-sm col" id="c2" name="catalog2">
									<!-- 根据选择的一级分类循环二级分类 -->
								</select>
							</div>
							<div class="col-md-3 row">
								<label class="col-5 col-form-label  text-right">
									三级分类 </label>
								<select class="form-control form-control-sm col" id="c3" name="catalog3">
									<!-- 根据选择的二级分类循环三级分类 -->
								</select>
							</div>
						</div>
						<hr>
						<div class="form-group row">
							<label class="col-md-2 col-form-label offset-1 text-right" ><i class="text-danger " style="font: bold 14px/20px tahoma, verdana;">*</i>
								商品模型 </label>
							<div class="col-md-4">
								<select class="form-control form-control-sm col" id="model" name="goods_model">
									<!-- 根据三级分类循环出模型 -->

								</select>
							</div>
						</div>
						<hr>
						<div class="form-group row">
							<!-- 排列组合显示每条sku，可填写商品库存，商品sku -->
							<label class="col-md-2 col-form-label offset-1 text-right" ><i class="text-danger " style="font: bold 14px/20px tahoma, verdana;">*</i>SKU设置</label>
							<table class="table table-responsive-sm col-8 offset-2">
								<thead>
									<tr>
										<th>sku描述</th>
										<th>库存</th>
										<th>价格</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody id="consku">
									<!-- 将属性和属性进行排列组合 循环展示 -->

								</tbody>
							</table>
						</div>
					</div>
					<div class="card-footer ">
						<div class="offset-3">
							<!-- 改为submit -->
							<button class="btn  btn-primary" role="button" data-id="submit">确认提交</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="${root}/static/js/wt/ajax-getcatalog.js"></script>
<script type="text/javascript" src="${root}/static/js/wt/ajax-getModelByCatalog3.js"></script>
<script type="text/javascript" src="${root}/static/js/wt/ajax-getSkusLIstByModelId.js"></script>
<script type="text/javascript" src="${root}/static/js/wt/ajax-addGoods.js"></script>