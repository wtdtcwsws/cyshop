<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="animated fadeIn">
	<div class="row">
		<div class="col-1">
			<!-- 返回 -->
			<a class="btn  btn-primary " style="margin-bottom: 15px ;border-radius:50%;" role="button" href="wt/catalog.jsp" data-toggle="ajaxLoad" data-target="#ui-view"><i class="fa fa-arrow-left"></i></a>
		</div>
		<div class="col-8">
			<h4 >商品分类添加  <small class="text-muted"> 三级分类 </small></h4>
		</div>
	</div>

	<div class="card">
		<div class="card-header">
			商品分类
			<small>列表</small>
		</div>
	
		<div class="card-body">
			<div class="row">
				<div class="col">
					<ul class="nav nav-pills mb-1" id="pills-tab" role="tablist">
						<li class="nav-item">
							<a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home"
							 aria-selected="true">一级分类添加</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile"
							 aria-selected="false">二级分类添加</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact"
							 aria-selected="false">三级分类添加</a>
						</li>
					</ul>
					<div class="tab-content" id="pills-tabContent">
						<div class="tab-pane fade active show" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
							<div class="card">
								<form class="form-horizontal" action="add/catalog?method=addCatalog1" method="post">
								<div class="card-header">
									<strong>一级分类添加</strong></div>
								<div class="card-body ">

									<div class="form-group row">
										<label class="col-md-2 col-form-label offset-1 text-right" for="name"><i class="text-danger " style="font: bold 14px/20px tahoma, verdana;">*</i>
											一级分类 </label>
										<div class="col-md-4">
											<input class="form-control"  type="text" name="catalog1">
											<span class="help-block offset-1">一级分类</span>
										</div>
									</div>
								</div>
								<div class="card-footer ">
									<div class="offset-3">
										<!-- 改为submit -->
										<input type="submit"class="btn btn-primary" value="确认提交">
									</div>
								</div>
								</form>
							</div>
						</div>
						<div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
							<div class="card">
								<form class="form-horizontal" action="add/catalog?method=addCatalog2" method="post">
								<div class="card-header">
									<strong>二级分类添加</strong></div>
								<div class="card-body ">
	
									<div class="form-group row">
										<label class="col-md-2 col-form-label offset-1 text-right" for="name"><i class="text-danger " style="font: bold 14px/20px tahoma, verdana;">*</i>
											一级分类 </label>
										<div class="col-md-4">
											<select class="form-control form-control-sm col-4 " id="c1-2" name="catalog1Id">
												<!-- 循环一级分类 -->
												<option>请选择</option>
												<c:forEach items="${catalog1}" var="c1">
												<option value="${c1.id}">${c1.name}</option>
												</c:forEach>
											</select>
											
											
											<span class="help-block offset-1">一级分类</span>
										</div>
									</div>
									<hr>
									<div class="form-group row">
										<label class="col-md-2 col-form-label offset-1 text-right" ><i class="text-danger " style="font: bold 14px/20px tahoma, verdana;">*</i>
											二级分类 </label>
										<div class="col-md-4">
											<input class="form-control"  type="text" name="catalog2">
											<span class="help-block offset-1">二级分类</span>
										</div>
									</div>
									
								</div>
								<div class="card-footer ">
									<div class="offset-3">
										<!-- 改为submit -->
										<input type="submit"class="btn btn-primary" value="确认提交">
									</div>
								</div>
								</form>
							</div>
						</div>
						<div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
							<div class="card">
								<form class="form-horizontal" action="add/catalog?method=addCatalog3" method="post">
								<div class="card-header">
									<strong>三级分类添加</strong></div>
								<div class="card-body ">
	
									<div class="form-group row">
										<label class="col-md-2 col-form-label offset-1 text-right" for="name"><i class="text-danger " style="font: bold 14px/20px tahoma, verdana;">*</i>
											一级分类 </label>
										<div class="col-md-4">
											<select class="form-control form-control-sm col-4 " id="c1-3" name="catalog1id">
												<!-- 循环一级分类 -->
												<option>请选择</option>
												<c:forEach items="${catalog1}" var="c1">
													<option value="${c1.id}">${c1.name}</option>
												</c:forEach>
											</select>
											<span class="help-block offset-1">一级分类</span>
										</div>
									</div>
									<hr>
									<div class="form-group row">
										<label class="col-md-2 col-form-label offset-1 text-right" ><i class="text-danger " style="font: bold 14px/20px tahoma, verdana;">*</i>
											二级分类 </label>
										<div class="col-md-4">
											<select class="form-control form-control-sm col-4 " id="c2-3" name="catalog2Id">
												<!-- 根据选择的一级分类循环二级分类 -->

											</select>
											<span class="help-block offset-1">二级分类</span>
										</div>
									</div>
									<hr>
									<div class="form-group row">
										<label class="col-md-2 col-form-label offset-1 text-right" ><i class="text-danger " style="font: bold 14px/20px tahoma, verdana;">*</i>
											三级分类</label>
										<div class="col-md-4">
											<input class="form-control" id="name" type="text" name="catalog3">
											<span class="help-block offset-1">三级分类</span>
										</div>
									</div>
								</div>
								<div class="card-footer ">
									<div class="offset-3">
										<!-- 改为submit -->
										<input type="submit"class="btn btn-primary" value="确认提交">
									</div>
								</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="${root}/static/js/wt/ajax-getcatalog2.js"></script>