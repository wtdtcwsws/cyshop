<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="animated fadeIn">

	<div class="card">
		<div class="card-header">
			商品分类
			<small>列表</small>
		</div>
		<div class="card-body">
			<!-- 商品分类添加按钮 -->
			<a class="btn  btn-outline-primary btn-sm" data-toggle="ajaxLoad" data-target="#ui-view" role="button" href="wt/add_catalog.html"><i
				 class="fa fa-plus"> 添加分类</i></a>
			<hr>
			<div id="accordion" role="tablist">
				<div class="card mb-0 ">
					<div class="card-header bg-primary " id="headingOne" role="tab">

						<h5 class="mb-0">
							<div class="row">
								<div class="col">
									<!-- href需要循环数据，分类名称需要循环查询 -->
									<a data-toggle="collapse" href="#catalog1_1" class="collapsed text-white">电脑办公</a>
								</div>
								<div class="col pull-right">
									<!-- 删除分类需要循环数据 -->
									<a class="pull-right" href="#"><i class="fa fa-remove text-white"></i></a>
								</div>
							</div>
						</h5>

					</div>
					<div class="collapse" id="catalog1_1" role="tabpanel" data-parent="#accordion" style="">
						<div class="card-body p-0 pl-2">
							<!-- 二级分类 -->
							<div class="card mb-0 ">
								<div class="card-header  bg-info " id="headingOne" role="tab">
									<h5 class="mb-0">
										<div class="row">
											<div class="col">
												<!-- href需要循环数据，分类名称需要循环查询 -->
												<a data-toggle="collapse" href="#catalog2_1" class="collapsed text-white">计算机</a>
											</div>
											<div class="col pull-right">
												<!-- 删除分类需要循环数据 -->
												<a class="pull-right" href="#"><i class="fa fa-remove text-white"></i></a>
											</div>
										</div>

									</h5>
								</div>
								<div class="collapse" id="catalog2_1" role="tabpanel" data-parent="#catalog1_1" style="">
									<div class="card-body p-0 pl-2">
										<!-- 三级分类 -->
										<div class="card mb-0 ">
											<div class="card-header  bg-success " id="headingOne" role="tab">
												<h5 class="mb-0">
													<div class="row">
														<div class="col">
															<!-- href需要循环数据，分类名称需要循环查询 -->
															<a data-toggle="collapse" href="#catalog3_1" class="collapsed text-white">笔记本</a>
														</div>
														<div class="col pull-right">
															<!-- 删除分类需要循环数据 -->
															<a class="pull-right" href="#"><i class="fa fa-remove text-white"></i></a>
														</div>
													</div>

												</h5>
											</div>
											<div class="collapse" id="catalog3_1" role="tabpanel" data-parent="#catalog2_1" style="">
												<div class="card-body p-0 pl-2">
													<!-- 三级分类 -->
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 二级分类 -->
							<div class="card mb-0 ">
								<div class="card-header  bg-info " id="headingOne" role="tab">
									<h5 class="mb-0">

										<div class="row">
											<div class="col">
												<!-- href需要循环数据，分类名称需要循环查询 -->
												<a data-toggle="collapse" href="#catalog2_2" class="collapsed text-white">服务器</a>
											</div>
											<div class="col pull-right">
												<!-- 删除分类需要循环数据 -->
												<a class="pull-right" href="#"><i class="fa fa-remove text-white"></i></a>
											</div>
										</div>
									</h5>
								</div>
								<div class="collapse" id="catalog2_2" role="tabpanel" data-parent="#catalog1_1" style="">
									<div class="card-body p-0 pl-2">
										<!-- 三级分类 -->
										<div class="card mb-0 ">
											<div class="card-header  bg-success " id="headingOne" role="tab">
												<h5 class="mb-0">
													<div class="row">
														<div class="col">
															<!-- href需要循环数据，分类名称需要循环查询 -->
															<a data-toggle="collapse" href="#catalog3_2" class="collapsed text-white">塔式服务器</a>
														</div>
														<div class="col pull-right">
															<!-- 删除分类需要循环数据 -->
															<a class="pull-right" href="#"><i class="fa fa-remove text-white"></i></a>
														</div>
													</div>
												</h5>
											</div>
										</div>
										<div class="card mb-0 ">
											<div class="card-header  bg-success " id="headingOne" role="tab">
												<h5 class="mb-0">
													<div class="row">
														<div class="col">
															<!-- href需要循环数据，分类名称需要循环查询 -->
															<a data-toggle="collapse" href="#catalog3_2" class="collapsed text-white">刀片式服务器</a>
														</div>
														<div class="col pull-right">
															<!-- 删除分类需要循环数据 -->
															<a class="pull-right" href="#"><i class="fa fa-remove text-white"></i></a>
														</div>
													</div>
												</h5>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>
