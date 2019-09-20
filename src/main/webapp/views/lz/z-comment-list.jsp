<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="animated  fadeIn">
	<h4>评论管理 <small class="text-muted"> 商城所有评论及管理</small></h4>
	<hr>
	<div class="card">
		<div class="card-header">
			<div class="row ">

				<div class="col-1">
					<i class="fa fa-align-justify"></i> 评论列表

				</div>

			</div>
			</div>
		</div>
		<div class="card-body">

			<div class="alert  container " role="alert">


				<!-- 内容 -->
				<div class="row">


					<!-- 订单中的商品信息 -->
					<div class="alert  col-12" role="alert">
						<!-- 退款内容 -->

						<div class="alert  col-12" role="alert">



							<div class="row">
								<div class="col">
									<ul class="nav nav-pills mb-1" id="pills-tab" role="tablist">
										<li class="nav-item">
											<div class="btn-group">
												<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true"
												 aria-expanded="false">近三个月评论</button>
												<div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 35px, 0px);">

													<a class="dropdown-item" href="#">近一个月的评论</a>
													<a class="dropdown-item" href="#">近三个月的评论</a>
													<a class="dropdown-item" href="#">近半年的评论</a>
													<a class="dropdown-item" href="#">近一年评论</a>
													<a class="dropdown-item" href="#">今日评论</a>
													<!-- <div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#">Separated link</a>
												</div> -->
												</div>
											</div>
										</li>
										<hr>

										<li class="nav-item">
											<a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab"
											 aria-controls="pills-home" aria-selected="true">商品评论</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile"
											 aria-selected="false">客服评价</a>
										</li>
										<li class="nav-item">
											<a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact"
											 aria-selected="false">退换货服务评价</a>
										</li>
									</ul>
									<div class="tab-content card" id="pills-tabContent">
										<div class="tab-pane fade active show" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
											<hr>
											<!-- 评论搜索条件面板 -->
											<div class="row">
												<div class="input-group col-4">
													<div class="input-group-prepend">
														<span class="input-group-text">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">评论关键词</font>
															</font>
														</span>
													</div>
													<input class="form-control" id="username1" type="text" name="username3" autocomplete="name">

												</div>
												<div class="input-group col-4">
													<div class="input-group-prepend">
														<span class="input-group-text">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">买家登录名</font>
															</font>
														</span>
													</div>
													<input class="form-control" id="username2" type="text" name="username3" autocomplete="name">

												</div>
											</div>
											<!-- 好评与否和评论星级 -->
											<div class="row mt-3">
												<div class="input-group col-4">
													<div class="input-group-prepend">
														<span class="input-group-text">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">好评程度</font>
															</font>
														</span>
													</div>
													<select class="form-control form-control" id="select1" name="select3">
														<option value="0">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">全部评论</font>
															</font>
														</option>
														<option value="1">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">好评</font>
															</font>
														</option>
														<option value="2">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">中评</font>
															</font>
														</option>
														<option value="3">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">差评</font>
															</font>
														</option>
													</select>

												</div>

												<!-- 评论星级 -->
												<div class="input-group col-4">
													<div class="input-group-prepend">
														<span class="input-group-text">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">评论星级</font>
															</font>
														</span>
													</div>
													<select class="form-control form-control" id="select2" name="select3">
														<option value="0">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">全部星级</font>
															</font>
														</option>
														<option value="1">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">⭐⭐⭐⭐⭐</font>
															</font>
														</option>
														<option value="2">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">⭐⭐⭐⭐</font>
															</font>
														</option>
														<option value="3">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">⭐⭐⭐</font>
															</font>
														</option>
														<option value="4">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">⭐⭐</font>
															</font>
														</option>
														<option value="5">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">⭐</font>
															</font>
														</option>
													</select>

												</div>
											</div>

											<div class="row mt-3">
												<div class="input-group col-4">
													<div class="input-group-prepend">
														<span class="input-group-text">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">订单类型</font>
															</font>
														</span>
													</div>
													<select class="form-control form-control" id="select3" name="select3">
														<option value="0">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">全部</font>
															</font>
														</option>
														<option value="1">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">实体</font>
															</font>
														</option>
														<option value="2">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">虚拟</font>
															</font>
														</option>

													</select>

												</div>
												<div class="input-group col-4">
													<div class="input-group-prepend">
														<span class="input-group-text">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">订单号</font>
															</font>
														</span>
													</div>
													<input class="form-control" id="username3" type="text" name="username3" autocomplete="name">

												</div>

											</div>

											<div class="row mt-3">
												<div class="input-group col-4">
													<div class="input-group-prepend">
														<span class="input-group-text">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">支付方式</font>
															</font>
														</span>
													</div>
													<select class="form-control form-control" id="select4" name="select3">
														<option value="0">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">全部</font>
															</font>
														</option>
														<option value="1">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">支付宝</font>
															</font>
														</option>
														<option value="2">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">微信</font>
															</font>
														</option>
														<option value="3">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">cy花呗</font>
															</font>
														</option>

													</select>

												</div>
												<div class="input-group col-4">
													<div class="input-group-prepend">
														<span class="input-group-text">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">支付交易号</font>
															</font>
														</span>
													</div>
													<input class="form-control" id="username4" type="text" name="username3" autocomplete="name">

												</div>

											</div>

											<!-- 评论的会员等级 -->
											<div class="row mt-3">
												<div class="input-group col-4">
													<div class="input-group-prepend">
														<span class="input-group-text">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">会员等级</font>
															</font>
														</span>
													</div>
													<select class="form-control form-control" id="select5" name="select3">
														<option value="0">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">全部</font>
															</font>
														</option>
														<option value="1">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">SVIP1</font>
															</font>
														</option>
														<option value="2">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">SVIP2</font>
															</font>
														</option>
														<option value="3">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">SVIP3</font>
															</font>
														</option>
													</select>

												</div>

												<!-- 评论时间 -->
												<div class="input-group col-4">
													<div class="input-group-prepend">
														<span class="input-group-text">
															<font style="vertical-align: inherit;">
																<font style="vertical-align: inherit;">指定日期</font>
															</font>
														</span>
													</div>
													<input class="form-control" id="date-input" type="date" name="date-input" placeholder="date">

												</div>
											</div>
											<hr>
											<div class="row">
												<div class="col-5">
													
													<a class="nav-link" href="index.html#z-comment-list2.html">
														<button class="btn btn-square btn-block btn-primary" type="button">搜索</button>
													</a>
												</div>
											</div>

										</div>
										<div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
											Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1
											labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer
											twee. Qui photo booth letterpress, commodo
											enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda
											labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore
											stumptown. Vegan fanny pack
											odio cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson
											biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed echo
											park.
										</div>
										<div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
											Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny
											pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard
											locavore carles etsy salvia banksy
											hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg
											banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred
											you probably haven't
											heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.
										</div>
									</div>
								</div>
							</div>

							<!-- 退款的商品头部 -->
							<div class="alert alert-info col-12" role="alert">

							</div>
							<hr>
							

							



						</div>


					</div>
				</div>


			</div>
			<!-- /.modal-content-->
		</div>
		<!-- /.modal-dialog-->
	</div>
