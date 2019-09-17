<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="animated fadeIn">
	<div class="row">
		<div class="pl-3">
			<a class="btn  btn-primary " style="margin-bottom: 15px ;border-radius:50%;" role="button" href="zhy/returnsList.html" data-toggle="ajaxLoad" data-target="#ui-view"><i class="fa fa-arrow-left"></i></a>
		</div>
		<div class="col-8">
			<h4 >退货/款详情</h4>
		</div>
	</div>
	
	<div class="card">
		<div class="card-header">
			<strong>退货/款单明细</strong></div>
		<div class="card-body">
			<form class="form-horizontal" action="" method="post">
				<div class="form-group row">
					<label class="col-md-2 col-form-label offset-1 text-right" for="name">订单编号：</label>
					<div class="col-md-3">
						<!-- 订单编号 -->
						<label class="col-form-label">13654181312</label>
					</div>
					<label class="col-md-2 col-form-label text-right" for="name">买家账号名：</label>
					<div class="col-md-3">
						<label class="col-form-label">admin</label>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-md-2 col-form-label offset-1 text-right" for="">商品名称：</label>
					<div class="col-md-3">
						<label class="col-form-label">仙人球多肉植物组合</label>
					</div>
					<label class="col-md-2 col-form-label text-right" for="name">申请日期：</label>
					<div class="col-md-3">
						<label class="col-form-label">YYYY-MM-DD</label>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-md-2 col-form-label offset-1 text-right" for="">商品数量(个)：</label>
					<div class="col-md-3">
						<label class="col-form-label">50</label>
					</div>
					<label class="col-md-2 col-form-label text-right" for=""><i class="text-danger " style="font: bold 14px/20px tahoma, verdana;">*</i>退款金额(￥)：</label>
					<div class="col-md-3">
						<input class="form-control col-md-3" id="" type="text" name="" placeholder="0" >
					</div>
				</div>
				<div class="form-group row">
					<label class="col-md-2 col-form-label offset-1 text-right">退货/款原因：</label>
					<div class="col-md-4">
						 <textarea class="form-control col-md-8" placeholder="" required disabled>质量太差，不想要了</textarea>
					</div>
				</div>
				<div class="form-group row pt-3">
					<label class="col-md-2 col-form-label offset-1 text-right">操作：</label>
					<div class="col-md-4">
						<select class="form-control form-control-sm col-4 " id="select3" name="select3">
							<option value="-1">已撤销</option>
							<option value="0">未处理</option>
							<option value="1">已通过</option>
							<option value="2">已完成</option>
						</select>
					</div>
				</div>
			</form>
		</div>
		<div class="card-footer ">
			<div class="offset-5">
				<a class="btn btn-primary" role="button" href="w-supplier-list.html" data-toggle="ajaxLoad" data-target="#ui-view">确认</a>
			</div>
		</div>
	</div>
</div>