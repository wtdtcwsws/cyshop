<%@ page import="com.cyxz.cyshop.service.CatalogService" %>
<%@ page import="java.util.List" %>
<%@ page import="com.cyxz.cyshop.domain.Catalog1" %>
<%@ page import="com.cyxz.cyshop.domain.Catalog2" %>
<%@ page import="com.cyxz.cyshop.domain.Catalog3" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    CatalogService catalogService = new CatalogService();
    List<Catalog1> catalog1s = catalogService.getCatalog1s();
    session.setAttribute("catalog1",catalog1s);
    List<Catalog2> catalog2s = catalogService.getCatalog2s();
    session.setAttribute("catalog2",catalog2s);
    List<Catalog3> catalog3s = catalogService.getCatalog3s();
    session.setAttribute("catalog3",catalog3s);

%>
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
            <% for (Catalog1 c1 : catalog1s) {%>
            <div id="catalog1<%=c1.getId()%>" role="tablist">
                <div class="card mb-0 ">
                    <div class="card-header bg-primary " role="tab">

                        <h5 class="mb-0">
                            <div class="row">
                                <div class="col">
                                    <!-- href需要循环数据，分类名称需要循环查询 -->
                                    <a data-toggle="collapse" href="#catalog1_<%=c1.getId()%>"
                                       class="collapsed text-white"><%=c1.getName()%>
                                    </a>
                                </div>
                                <div class="col pull-right">
                                    <!-- 删除分类需要循环数据 -->
                                    <a class="pull-right" href="#" data-level="1" data-id="<%=c1.getId()%>"><i class="fa fa-remove text-white"></i></a>
                                </div>
                            </div>
                        </h5>

                    </div>
                    <div class="collapse" id="catalog1_<%=c1.getId()%>" role="tabpanel"
                         data-parent="#catalog1<%=c1.getId()%>" style="">
                        <div class="card-body p-0 pl-2">
                            <%
                                for (Catalog2 c2 : catalog2s) {
                                    if (c2.getCatalog_1_id().equals(c1.getId())) {
                            %>
                            <!-- 二级分类 -->
                            <div class="card mb-0 ">
                                <div class="card-header  bg-info " role="tab">
                                    <h5 class="mb-0">
                                        <div class="row">
                                            <div class="col">
                                                <!-- href需要循环数据，分类名称需要循环查询 -->
                                                <a data-toggle="collapse" href="#catalog2_<%=c2.getId()%>"
                                                   class="collapsed text-white"><%=c2.getName()%>
                                                </a>
                                            </div>
                                            <div class="col pull-right">
                                                <!-- 删除分类需要循环数据 -->
                                                <a class="pull-right" href="#" data-level="2" data-id="<%=c2.getId()%>" ><i
                                                        class="fa fa-remove text-white"></i></a>
                                            </div>
                                        </div>

                                    </h5>
                                </div>
                                <div class="collapse" id="catalog2_<%=c2.getId()%>" role="tabpanel"
                                     data-parent="#catalog1_1"
                                     style="">
                                    <div class="card-body p-0 pl-2">
                                        <!-- 三级分类 -->
                                        <%
                                            for (Catalog3 c3 : catalog3s) {
                                                if (c3.getCatalog_2_id().equals(c2.getId())) {
                                                %>
                                        <div class="card mb-0 ">
                                            <div class="card-header  bg-success " role="tab">
                                                <h5 class="mb-0">
                                                    <div class="row">
                                                        <div class="col">
                                                            <!-- href需要循环数据，分类名称需要循环查询 -->
                                                            <a data-toggle="collapse" href="#catalog3_<%=c3.getId()%>"
                                                               class="collapsed text-white"><%=c3.getName()%>
                                                            </a>
                                                        </div>
                                                        <div class="col pull-right">
                                                            <!-- 删除分类需要循环数据 -->
                                                            <a class="pull-right" href="#" data-level="3" data-id="<%=c3.getId()%>"><i
                                                                    class="fa fa-remove text-white"></i></a>
                                                        </div>
                                                    </div>

                                                </h5>
                                            </div>
                                            <div class="collapse" id="catalog3_<%=c3.getId()%>" role="tabpanel"
                                                 data-parent="#catalog2_<%=c2.getId()%>" style="">
                                                <div class="card-body p-0 pl-2">
                                                    <!-- 三级分类 -->
                                                </div>
                                            </div>
                                        </div>
                                        <%
                                                }
                                            }
                                        %>
                                    </div>
                                </div>
                            </div>
                            <%
                                    }
                                }
                            %>

                        </div>
                    </div>
                </div>
            </div>
            <% }%>
        </div>
    </div>

</div>
<script type="text/javascript" src="${root}/static/js/wt/ajax-remove-catalog.js"></script>
