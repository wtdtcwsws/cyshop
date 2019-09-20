<%@ page import="com.cyxz.cyshop.service.CommentService" %>
<%@ page import="com.cyxz.cyshop.domain.Comment" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	CommentService commentService;
	commentService = new CommentService();
	Comment comment1s = commentService.getCommentByid("2");
	List<Comment> comments = commentService.getComments();

%>


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
		<div class="card-body">
			<table class="table table-responsive-sm table-bordered text-center">
				<thead>
					<tr>
						<th>用户</th>
						<th>评论内容</th>
						<th>商品</th>
						<th>评论时间</th>
						<th>隐藏</th>
						<th>操作</th>
						<!-- <th>推荐</th>
						<th>新品</th>
						<th>热卖</th>
						<th>上/下架</th>
						<th>库存</th>
						<th>排序</th> -->
					</tr>
				</thead>
				<tbody>
					<tr>
						
						<!-- <td colspan="12" class="text-left">
							<a class="btn  btn-outline-primary btn-sm" data-toggle="ajaxLoad" data-target="#ui-view" role="button" href="wutong/w-add-goods.html"><i
								 class="fa fa-plus"> 添加商品</i></a>
							<a class="btn  btn-outline-primary btn-sm" data-toggle="ajaxLoad" data-target="#ui-view" role="button" href="javaScript:;"><i
								 class="fa fa-plus"> 初始化商品搜索关键词</i></a>
							<a class="btn  btn-outline-primary btn-sm" data-toggle="ajaxLoad" data-target="#ui-view" role="button" href="javaScript:;">
								批量删除
							</a>
						</td> -->
					</tr>
					<% for (Comment com:comments) {

					%>
					<tr>
						<td>
							<span><%=com.getMember_name()%></span>
						</td>
						<td><%= com.getContent()%></td>
						<td><%= com.getSku_id()%></td>
						<td><%= com.getPublish_time()%></td>



							<%
								if (com.getHide()==0){
							%>


						<td>
							<label class="switch switch-label switch-pill switch-success switch-sm mb-0">
								<input class="switch-input small " type="checkbox" >
								<span class="switch-slider" data-checked="是" data-unchecked="否"></span>
							</label>
						</td>
						<%

							}

								else{
							%>
						<td>
							<label class="switch switch-label switch-pill switch-success switch-sm mb-0">
							<input class="switch-input small " type="checkbox" checked>
							<span class="switch-slider" data-checked="是" data-unchecked="否"></span>
						</label>
						</td>


						<%

							}
							%>



							<%--<label class="switch switch-label switch-pill switch-success switch-sm mb-0">--%>
								<%--<input class="switch-input small " type="checkbox" >--%>
								<%--<span class="switch-slider" data-checked="是" data-unchecked="否"></span>--%>
							<%--</label>--%>

						<td>
							<!-- Default dropright button -->
							<div class="btn-group dropright ">
								<button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
								 aria-expanded="false">
									<i class="fa fa-cog"></i>设置
								</button>
								<div class="dropdown-menu ">
									<a class="dropdown-item" href="#">预览评论</a>
									<a class="dropdown-item " href="#">删除评论</a>
									
								</div>
							</div>
						</td>
						
					</tr>
					<%}%>
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
