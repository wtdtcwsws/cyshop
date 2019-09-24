<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/24
  Time: 16:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--备份呢      --%>
<td class="text-left">四川省
    <br>成都市
    <br>锦江区
    <br>${add.specific_address}
</td>
<td class="text-left">
    姓名：${add.consignee_name}
    <br>手机：${add.phone}<br>
    <%--未付款状态显示修改地址按钮，否则不显示--%>
    <c:if test="${map.status==1}">
        <button type="button" class="btn btn-primary pull-left" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">修改收货信息</button>
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">修改收货信息</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <label for="recipient-add" class="col-form-label">新收货地址</label>
                                <input type="text" class="form-control" id="recipient-add">
                            </div>
                            <div class="form-group">
                                <label for="message-name" class="col-form-label">收货人</label>
                                <input type="text" class="form-control" id="message-name">
                            </div>
                            <div class="form-group">
                                <label for="message-phone" class="col-form-label">电话</label>
                                <input type="text" class="form-control" id="message-phone">
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary editadd" data-dismiss="modal" data-addId="${add.id}" data-orderId="${map.id}" >确定</button>
                    </div>
                </div>
            </div>
        </div>
    </c:if>



</td>
</body>
</html>
