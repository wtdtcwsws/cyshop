<%@ page import="com.cyxz.cyshop.service.MemberService" %>
<%@ page import="java.util.List" %>
<%@ page import="com.cyxz.cyshop.domain.Member" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
	MemberService memberService = new MemberService();
	List<Member> members = memberService.selectMember();

%>
<div class="card">

	<div class="card-header p-0">
		<div class="alert alert-danger alert-dismissible m-0" role="alert">
		  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		  <strong>操作说明：</strong>用于对会员的操作与管理
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
			<div class="col-2 offset-5">
				<button class="btn btn-primary ml-5" type="button" data-toggle="modal" data-target="#exampleModal" >
					<i class="fa fa-user-plus mr-1"></i>添加会员
				</button>
			</div>
		</div>	
		<!-- 表主体下面表格部分	 -->
		<div class="mt-2">
			<table class="table table-bordered text-center table-hover">
				<thead>
				  <tr>
					<th>编号</th>
					<th>账号</th>
					<th>密码</th>
					<th>姓名</th>
					<th>手机号码</th>
					<th>会员状态</th>
					<th>编辑/操作</th>
				  </tr>
				</thead>
				<!-- 表格内容 -->
				<tbody>
					<%
						for(Member member : members){
					%>
					<tr>
						<td data-js="ids"><%=member.getId()%></td>
						<td><%=member.getAccount()%></td>
						<td><%=member.getPassword()%></td>
						<td><%=member.getName()%></td>
						<td><%=member.getPhone()%></td>
						<td>
							<label class="switch switch-label switch-success">
								<input class="switch-input" type="checkbox" checked>
								<span class="switch-slider" data-checked="✓" data-unchecked="✕"></span>
							</label>
						</td>
						<td>
							<button class="btn btn-danger" type="button" style="height: 30px;width: 100px;" data-js="delete">
								<i class="fa fa-trash mr-1"></i>删除
							</button>
						</td>
					</tr>
				  <%}%>
				</tbody>
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

<!-- 添加会员模态框 -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
		<h4 class="modal-title" id="exampleModalLabel">新增会员信息<span class="ml-3 font-sm" style="color: #004CD6;">编号为：<i>1</i></span></h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
          <div class="form-group">
            <label class="control-label">账号：</label>
            <input type="text" class="form-control" data-js="account">
          </div>
          <div class="form-group">
            <label class="control-label">密码：</label>
            <input type="password" class="form-control" data-js="password">
          </div>
		  <div class="form-group">
		    <label class="control-label">姓名：</label>
			<input type="text" class="form-control" data-js="name">
		  </div>
		  <div class="form-group">
		    <label class="control-label">手机号码：</label>
			<input type="text" class="form-control" data-js="phone">
		  </div>
		  <div class="form-group">
		    <label class="control-label">会员状态：</label>
			<input type="text" class="form-control" disabled="disabled" placeholder="默认为激活状态,如需修改请在列表界面修改">
		  </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" data-js="button-no">取消</button>
        <button type="button" class="btn btn-primary" id="modal-button" data-js="modal-button" data-dismiss="modal">添加</button>
      </div>
    </div>
  </div>

</div>

<script src="${root}/static/js/lh/member.js"></script>