
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="animated fadeIn">

    <div class="card">
        <div class="card-header">
            商品分类
            <small>列表</small>
        </div>
        <div class="card-body">
            <!-- 商品分类添加按钮 -->
            <a class="btn  btn-outline-primary btn-sm" data-toggle="ajaxLoad" data-target="#ui-view" role="button"
               href="wt/add_catalog.jsp"><i class="fa fa-plus"> 添加分类</i></a>
            <hr>
            <c:forEach items="${catalog1}" var="c1">
            <div id="catalog1${c1.id}" role="tablist">
                <div class="card mb-0 ">
                    <div class="card-header bg-primary " role="tab">

                        <h5 class="mb-0">
                            <div class="row">
                                <div class="col">
                                    <!-- href需要循环数据，分类名称需要循环查询 -->
                                    <a data-toggle="collapse" href="#catalog1_${c1.id}"
                                       class="collapsed text-white">${c1.name}
                                    </a>
                                </div>
                                <div class="col pull-right">
                                    <!-- 删除分类需要循环数据 -->
                                    <a class="pull-right" href="#" data-level="1" data-id="${c1.id}"><i class="fa fa-remove text-white"></i></a>
                                </div>
                            </div>
                        </h5>

                    </div>
                    <div class="collapse" id="catalog1_${c1.id}" role="tabpanel"
                         data-parent="#catalog1${c1.id}" style="">
                        <div class="card-body p-0 pl-2">
                        <c:forEach items="${catalog2}" var="c2">
                            <c:if test="${c1.id==c2.catalog_1_id}">

                                <!-- 二级分类 -->
                                <div class="card mb-0 ">
                                <div class="card-header  bg-info " role="tab">
                                    <h5 class="mb-0">
                                        <div class="row">
                                            <div class="col">
                                                <!-- href需要循环数据，分类名称需要循环查询 -->
                                                <a data-toggle="collapse" href="#catalog2_${c2.id}"
                                                   class="collapsed text-white">${c2.name}
                                                </a>
                                            </div>
                                            <div class="col pull-right">
                                                <!-- 删除分类需要循环数据 -->
                                                <a class="pull-right" href="#" data-level="2" data-id="${c2.id}"><i
                                                        class="fa fa-remove text-white"></i></a>
                                            </div>
                                        </div>

                                    </h5>
                                </div>
                                <div class="collapse" id="catalog2_${c2.id}" role="tabpanel"
                                data-parent="#catalog2_${c2.id}"
                                style="">
                                <div class="card-body p-0 pl-2">
                                <!-- 三级分类 -->
                                    <c:forEach items="${catalog3}" var="c3">
                                        <c:if test="${c2.id==c3.catalog_2_id}">

                                            <div class="card mb-0 ">
                                                <div class="card-header  bg-success " role="tab">
                                                    <h5 class="mb-0">
                                                        <div class="row">
                                                            <div class="col">
                                                                <!-- href需要循环数据，分类名称需要循环查询 -->
                                                                <a data-toggle="collapse"
                                                                   href="#catalog3_${c3.id}"
                                                                   class="collapsed text-white">${c3.name}
                                                                </a>
                                                            </div>
                                                            <div class="col pull-right">
                                                                <!-- 删除分类需要循环数据 -->
                                                                <a class="pull-right" href="#" data-level="3"
                                                                   data-id="${c3.id}"><i
                                                                        class="fa fa-remove text-white"></i></a>
                                                            </div>
                                                        </div>

                                                    </h5>
                                                </div>
                                                <div class="collapse" id="catalog3_${c3.id}" role="tabpanel"
                                                     data-parent="#catalog2_${c3.id}" style="">
                                                    <div class="card-body p-0 pl-2">
                                                        <!-- 三级分类 -->
                                                    </div>
                                                </div>
                                            </div>

                                        </c:if>
                                    </c:forEach>
                                    </div>
                                    </div>
                                    </div>


                            </c:if>
                        </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>

</div>
<script type="text/javascript" src="${root}/static/js/wt/ajax-remove-catalog.js"></script>
