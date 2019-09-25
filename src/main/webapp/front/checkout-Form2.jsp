<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%-------------------------------creatOrderForm--%>
<form id="creatOrderForm2" action="/views/checkout?method=createOrder2" method="post">
    <div class="row">
        <div class="col-sm-12">
            <div class="panel panel-default no-padding">
                <div class="col-sm-6 checkout-shipping-methods">
                    <div class="panel-heading">
                        <h4 class="panel-title"><i class="fa fa-truck"></i> 运输方式</h4>
                    </div>
                    <div class="panel-body ">
                        <p>请选择订单使用的运送方式</p>
                        <div class="radio">
                            <label>
                                <c:choose>
                                    <c:when test="${postPrice eq '0' || postPrice eq null}">
                                        <input id="expressId1" type="radio" checked data-expressRadio name="Delivery" value="0">
                                    </c:when>
                                    <c:otherwise>
                                        <input id="expressId1" type="radio" data-expressRadio name="Delivery" value="0">
                                    </c:otherwise>
                                </c:choose>
                                平邮快递 - ￥0.00
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <c:choose>
                                    <c:when test="${postPrice eq '10'}">
                                        <input type="radio" checked data-expressRadio name="Delivery" value="10">
                                    </c:when>
                                    <c:otherwise>
                                        <input type="radio" data-expressRadio name="Delivery" value="10">
                                    </c:otherwise>
                                </c:choose>
                                顺丰速运 - ￥10.00
                            </label>
                        </div>

                    </div>
                </div>
                <div class="col-sm-6  checkout-payment-methods">
                    <div class="panel-heading">
                        <h4 class="panel-title"><i class="fa fa-credit-card"></i> 支付方式</h4>
                    </div>
                    <div class="panel-body">
                        <p>请选择订单的付款方式</p>
                        <div class="radio">
                            <label>
                                <input type="radio" checked="checked" name="Payment" value="1">微信</label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="Payment" value="2">支付宝</label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="Payment" value="3">银联</label>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title"><i class="fa fa-pencil"></i> 确认收获地址<a class="pull-right" data-toggle="modal" data-target="#insertAddressModal">新增地址</a></h4>
                    <%--新增地址的模态框--%>
                    <div class="modal fade" id="insertAddressModal" tabindex="-1" role="dialog" aria-hidden="true" data-aams>
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <%--新增地址的表单--%>
                                <div class="modal-body">
                                    <div class="panel panel-default" style="color: black">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">
                                                <i class="fa fa-pencil"></i> 新增地址
                                            </h4>
                                        </div>
                                        <div class="panel-body">
                                            <div class="form-group">
                                                <label class="col-form-label">地址信息(请填写包括省/市/区在内的详细信息):</label>
                                                <%--data-AAmessage是新增收货人的地址--%>
                                                <input class="form-control" data-AAmessage2/>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-form-label">收货人名称:</label>
                                                <%--data-AAname是新增收货人的姓名--%>
                                                <input class="form-control" data-AAname2/>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-form-label">收货人电话:</label>
                                                <%--data-AAphone是新增收货人的电话--%>
                                                <input class="form-control" data-AAphone2/>
                                            </div>
                                        </div>
                                        <div class="pull-right">
                                            <a type="button" class="btn btn-primary" data-Aaddress2 >保存</a>
                                            <a type="button" class="btn btn-danger ml-3" data-dismiss="modal">取消</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="panel-body checkout-shipping-methods">

                    <%--此处应为根据用户查询数据库收货地址表的信息--%>
                    <c:forEach var="memberAddress" items="${memberAddressess}" varStatus="status">
                        <div class="radio">
                            <label id="addressRadio">
                                <input id="radio1${status.index}" type="radio" name="address2" data-checkedRadio2 value="${memberAddress.getId()}">
                                    <%--数据库查出来的地址和名字--%>
                                <i class="fa fa-street-view">&nbsp;&nbsp;</i>${memberAddress.getSpecific_address()} ${memberAddress.getConsignee_name()} 收</label>
                            <a class="pull-right" data-toggle="modal" data-target="#exampleModal${memberAddress.getId()}">修改本地址</a>

                                <%--修改地址的模态框--%>
                            <div class="modal fade" id="exampleModal${memberAddress.getId()}" tabindex="-1" role="dialog" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-body">

                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <h4 class="panel-title">
                                                        <i class="fa fa-pencil"></i> 修改地址
                                                    </h4>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="form-group">
                                                            <%--数据库查出来的收货地址--%>
                                                        <label class="col-form-label">地址信息(请填写包括省/市/区在内的详细信息):</label>
                                                        <input class="form-control" placeholder="${memberAddress.getSpecific_address()}" data-DAmessage2 />
                                                    </div>
                                                    <div class="form-group">
                                                            <%--数据库查出来的收货人名字--%>
                                                        <label class="col-form-label">收货人名称:</label>
                                                        <input class="form-control" placeholder="${memberAddress.getConsignee_name()}" data-DAname2/>
                                                    </div>
                                                    <div class="form-group">
                                                            <%--数据库查出来的收货人电话--%>
                                                        <label class="col-form-label">收货人电话:</label>
                                                        <input class="form-control" placeholder="${memberAddress.getPhone()}" data-DAphone2/>
                                                    </div>
                                                </div>
                                                <div class="pull-right">
                                                    <a id="${status.index}" type="button" class="btn btn-primary" data-Daddress2 data-UAid="${memberAddress.getId()}">保存</a>
                                                    <a type="button" class="btn btn-danger ml-3" data-dismiss="modal">取消</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>
            </div>
        </div>

        <div class="col-sm-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title"><i class="fa fa-shopping-cart"></i> 确认订单信息</h4>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <td class="text-center">商品图片</td>
                                <td class="text-left">商品名称</td>
                                <td class="text-left">商品属性</td>
                                <td class="text-left">数量</td>
                                <td class="text-right">单价</td>
                                <td class="text-right">小计</td>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="confirmOrderVO" items="${confirmOrderVOs}">
                                <tr>
                                    <%--商品查出来的商品图片--%>
                                    <td class="text-center"><a href="javascript:;"><img width="60px" src="${root}${confirmOrderVO.getSpu_img()}" alt="Xitefun Causal Wear Fancy Shoes" title="Xitefun Causal Wear Fancy Shoes" class="img-thumbnail"></a></td>
                                    <%--数据库查出来的商品名称--%>
                                    <td class="text-left"><a href="javascript:;">${confirmOrderVO.getSpu_name()}</a></td>
                                    <%--数据库查出的sku值--%>
                                    <td>
                                        <c:forEach var="sku_name" items="${confirmOrderVO.getSku_name()}">
                                            <span>${sku_name}</span><br>
                                        </c:forEach>
                                        <%--<span>颜色:红色</span><br>--%>
                                        <%--<span>内存:256G</span>--%>
                                    </td>
                                    <td class="text-left" >

                                        <div class="option quantity">
                                            <div class="input-group quantity-control" unselectable="on" style="-webkit-user-select: none;width: 60px">
                                                <input class="form-control" type="text" name="quantity" value="${confirmOrderVO.getNums()}" disabled />
                                            </div>
                                        </div>
                                    </td>
                                    <td class="text-right">${confirmOrderVO.getUnitPrice()}</td>
                                    <td class="text-right">${confirmOrderVO.getPrice()}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                            <tfoot>
                            <tr>
                                <td class="text-right" colspan="3" style="border-right: none"><strong>发货时间:</strong></td>
                                <td class="text-left" colspan="3" style="border-left: none">卖家承诺订单在买家付款后, 5天内发货</td>
                            </tr>
                            <tr>
                                <td class="text-right" colspan="3" style="border-right: none"><strong>运费:</strong></td>
                                <td class="text-left" colspan="2" style="border-left: none;border-right: none">购买多件商品包邮</td>
                                <td class="text-right" colspan="1" style="border-left: none">￥0.00</td>
                                <%--<td class="text-right" colspan="1" style="border-left: none">￥${confirmOrderVO.getPostPrice()}</td>--%>
                            </tr>
                            <tr>
                                <td class="text-right" colspan="6"><strong>订单合计:${orderPrice}</strong>
                                    <%--${confirmOrderVO.getOrderPrice()}--%>
                                </td>
                            </tr>
                            </tfoot>
                        </table>
                        <div class="buttons">
                            <div class="pull-right">
                                <%--<input type="button" class="btn btn-primary" id="button-confirm" value="提交订单">--%>
                                <input type="submit" class="btn btn-primary" id="button-confirm" value="提交订单">
                                <%-------------------此处跳转会商品详细页面-------------------%>
                                <a href="javascript:;" type="button" class="btn btn-primary" >取消</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
