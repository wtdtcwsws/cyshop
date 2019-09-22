<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="animated fadeIn">
    <div class="row">
        <div class="col-1">
            <!-- 返回 -->
            <a class="btn  btn-primary " style="margin-bottom: 15px ;border-radius:50%;" role="button"
               href="wt/goods_model.jsp"
               data-toggle="ajaxLoad" data-target="#ui-view"><i class="fa fa-arrow-left"></i></a>
        </div>
        <div class="col-8">
            <h4>商品模型添加
                <small class="text-muted"> 模型添加</small>
            </h4>
        </div>
    </div>
    <div class="form-horizontal" action="" method="post">
        <div class="card">
            <div class="card-header">
                商品模型
                <small>列表</small>
            </div>

            <div class="card-body">
                <div class="card">
                    <div class="card-header">
                        <strong>商品模型添加</strong></div>
                    <div class="card-body ">

                        <div class="form-group row">
                            <label class="col-md-2 col-form-label offset-1 text-right"><i class="text-danger "
                                                                                          style="font: bold 14px/20px tahoma, verdana;">*</i>
                                商品模型名称 </label>
                            <div class="col-md-4">
                                <input class="form-control" type="text" name="model_name">
                                <span class="help-block offset-1">商品模型名称 </span>
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

                            <table class="table table-responsive-sm col-8 offset-2">
                                <thead>
                                <tr>
                                    <th>编号</th>
                                    <th>属性</th>
                                    <th>操作</th>

                                </tr>

                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        <button class="btn  btn-outline-primary btn-sm" type="button"
                                                data-toggle="modal" data-target="#add-attri"><i class="fa fa-plus"></i>添加
                                        </button>
                                        <div class="modal fade" id="add-attri" tabindex="-1" role="dialog"
                                             style="display: none;"
                                             aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">添加属性</h4>
                                                        <button class="close" type="button" data-dismiss="modal"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">×</span>
                                                        </button>
                                                    </div>
                                                    <%--属性添加模态框--%>
                                                    <div id="addAttriModal">
                                                        <div class="modal-body">
                                                            <div class="form-group row">
                                                                <label class="col-md-2 col-form-label offset-1 text-right"><i
                                                                        class="text-danger "
                                                                        style="font: bold 14px/20px tahoma, verdana;">*</i>
                                                                    属性 </label>
                                                                <div class="col-md-4">
                                                                    <input class="form-control" type="text"
                                                                           name="attri">
                                                                    <span class="help-block offset-1">属性添加</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button class="btn btn-secondary" type="button"
                                                                    data-dismiss="modal">取消
                                                            </button>
                                                            <input id="addAttriBtn" class="btn btn-primary"
                                                                   type="button" data-dismiss="modal" value="确定">
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- /.modal-content-->
                                            </div>
                                            <!-- /.modal-dialog-->
                                        </div>
                                    </td>
                                </tr>
                                <%--js脚本添加--%>
                                </tbody>
                            </table>

                        </div>
                        <hr>
                        <div class="form-group row">
                            <table class="table table-responsive-sm col-8 offset-2">
                                <thead>
                                <tr>
                                    <th>编号</th>
                                    <th>属性编号</th>
                                    <th>属性值</th>
                                    <th>操作</th>

                                </tr>

                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        <button id="openAttriValueBtn" class="btn  btn-outline-primary btn-sm"
                                                type="button" data-toggle="modal" data-target="#add-attri-value"><i
                                                class="fa fa-plus"></i>添加
                                        </button>
                                        <div class="modal fade" id="add-attri-value" tabindex="-1" role="dialog"
                                             style="display: none;"
                                             aria-hidden="true">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">添加属性值</h4>
                                                        <button class="close" type="button" data-dismiss="modal"
                                                                aria-label="Close">
                                                            <span aria-hidden="true">×</span>
                                                        </button>
                                                    </div>
                                                    <div id="addAttriValueModal">
                                                        <div class="modal-body">
                                                            <div class="form-group row">
                                                                <label class="col-md-2 col-form-label offset-1 text-right"><i
                                                                        class="text-danger "
                                                                        style="font: bold 14px/20px tahoma, verdana;">*</i>
                                                                    属性 </label>
                                                                <div class="col">
                                                                    <select data-name="optionAttri"
                                                                            class="form-control form-control-sm col-4 "
                                                                            id="select3" name="attri">
                                                                        <!-- 获取属性名 -->

                                                                    </select>
                                                                    <span class="help-block offset-1">属性选择</span>
                                                                </div>
                                                            </div>
                                                            <hr>
                                                            <div class="form-group row">
                                                                <label class="col-md-3 col-form-label  text-right"><i
                                                                        class="text-danger "
                                                                        style="font: bold 14px/20px tahoma, verdana;">*</i>
                                                                    属性值 </label>
                                                                <div class="col">
                                                                    <input class="form-control" type="text"
                                                                           data-name="attriValue">
                                                                    <span class="help-block offset-1">属性值添加</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button class="btn btn-secondary" type="button"
                                                                    data-dismiss="modal">取消
                                                            </button>
                                                            <input id="addAttriValueBtn" class="btn btn-primary"
                                                                   type="button" data-dismiss="modal" value="确定">
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- /.modal-content-->
                                            </div>
                                            <!-- /.modal-dialog-->
                                        </div>
                                    </td>
                                </tr>
                                <%--js动态加载--%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="card-footer ">
                        <div class="offset-3">
                            <!-- 改为submit -->
                            <button id="addModel" class="btn  btn-primary" role="button">确认提交</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        </form>

    </div>
</div>
<script type="text/javascript" src="${root}/static/js/wt/ajax-getcatalog.js"></script>
<script type="text/javascript" src="${root}/static/js/wt/addAttri.js"></script>
<script type="text/javascript" src="${root}/static/js/wt/ajax-addModel.js"></script>