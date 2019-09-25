<!-- Plugins and scripts required by this view-->
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<div class="animated fadeIn">
    <div class="row">
        <div class="col-sm-6 col-lg-3">
            <div class="card text-white bg-primary">
                <div class="card-body pb-0">
                    <div class="btn-group float-right">
                        <button class="btn btn-transparent dropdown-toggle p-0" type="button" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                            <i class="icon-settings"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-right">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </div>
                    <div class="text-value"><a href="http://localhost:8080/front/index.jsp" target="_blank"
                                               style="color: whitesmoke">前端首页</a></div>
                    <div>12</div>
                </div>
                <div class="chart-wrapper mt-3 mx-3" style="height:70px;">
                    <canvas class="chart" id="card-chart1" height="70"></canvas>
                </div>
            </div>
        </div>
        <!-- /.col-->
        <div class="col-sm-6 col-lg-3">
            <div class="card text-white bg-info">
                <div class="card-body pb-0">
                    <button class="btn btn-transparent p-0 float-right" type="button">
                        <i class="icon-location-pin"></i>
                    </button>
                    <div class="text-value"><a href="#wt/goods-list.jsp" style="color: white">商品总数</a></div>
                    <div>123</div>
                </div>
                <div class="chart-wrapper mt-3 mx-3" style="height:70px;">
                    <canvas class="chart" id="card-chart2" height="70"></canvas>
                </div>
            </div>
        </div>
        <!-- /.col-->
        <div class="col-sm-6 col-lg-3">
            <div class="card text-white bg-warning">
                <div class="card-body pb-0">
                    <div class="btn-group float-right">
                        <button class="btn btn-transparent dropdown-toggle p-0" type="button" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                            <i class="icon-settings"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-right">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </div>
                    <div class="text-value"><a href="#lh/member.jsp" style="color: white">会员总数</a></div>
                    <div>11</div>
                </div>
                <div class="chart-wrapper mt-3" style="height:70px;">
                    <canvas class="chart" id="card-chart3" height="70"></canvas>
                </div>
            </div>
        </div>
        <!-- /.col-->
        <div class="col-sm-6 col-lg-3">
            <div class="card text-white bg-danger">
                <div class="card-body pb-0">
                    <div class="btn-group float-right">
                        <button class="btn btn-transparent dropdown-toggle p-0" type="button" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                            <i class="icon-settings"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-right">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </div>
                    <div class="text-value">今日畅销</div>
                    <div>1</div>
                </div>
                <div class="chart-wrapper mt-3 mx-3" style="height:70px;">
                    <canvas class="chart" id="card-chart4" height="70"></canvas>
                </div>
            </div>
        </div>
        <!-- /.col-->
    </div>
    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col-sm-5">
                    <h4 class="card-title mb-0">销售统计</h4>
                    <div class="small text-muted">9月 2019</div>
                </div>
                <!-- /.col-->
                <div class="col-sm-7 d-none d-md-block">
                    <button class="btn btn-primary float-right" type="button">
                        <i class="icon-cloud-download"></i>
                    </button>
                    <div class="btn-group btn-group-toggle float-right mr-3" data-toggle="buttons">
                        <label class="btn btn-outline-secondary">
                            <input id="option1" type="radio" name="options" autocomplete="off"> 日
                        </label>
                        <label class="btn btn-outline-secondary active">
                            <input id="option2" type="radio" name="options" autocomplete="off" checked=""> 月
                        </label>
                        <label class="btn btn-outline-secondary">
                            <input id="option3" type="radio" name="options" autocomplete="off"> 年
                        </label>
                    </div>
                </div>
                <!-- /.col-->
            </div>
            <!-- /.row-->
            <div class="parent row" style="height: 600px" >
                <div class="child col bg-success" style="height: 200px;margin: 400px 50px 0">

                </div>
                <div class="child col bg-primary" style="height: 400px;margin: 200px 50px 0"></div>
                <div class="child col bg-warning" style="height: 500px;margin: 100px 50px 0"></div>
                <div class="child col bg-danger" style="height: 200px;margin: 400px 50px 0"></div>
                <div class="child col bg-info" style="height: 600px;margin: 0 50px"></div>

            </div>

        </div>
        <div class="card-footer">
            <div class="row text-center">
                <div class="col-sm-12 col-md mb-sm-2 mb-0">
                    <div class="text-muted">访问</div>
                    <strong>29.703 用户 (40%)</strong>
                    <div class="progress progress-xs mt-2">
                        <div class="progress-bar bg-success" role="progressbar" style="width: 40%" aria-valuenow="40"
                             aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
                <div class="col-sm-12 col-md mb-sm-2 mb-0">
                    <div class="text-muted">销售</div>
                    <strong>24.093 用户 (20%)</strong>
                    <div class="progress progress-xs mt-2">
                        <div class="progress-bar bg-info" role="progressbar" style="width: 20%" aria-valuenow="20"
                             aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
                <div class="col-sm-12 col-md mb-sm-2 mb-0">
                    <div class="text-muted">订单</div>
                    <strong>78.706 增长 (60%)</strong>
                    <div class="progress progress-xs mt-2">
                        <div class="progress-bar bg-warning" role="progressbar" style="width: 60%" aria-valuenow="60"
                             aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
                <div class="col-sm-12 col-md mb-sm-2 mb-0">
                    <div class="text-muted">新用户</div>
                    <strong>22.123 用户 (80%)</strong>
                    <div class="progress progress-xs mt-2">
                        <div class="progress-bar bg-danger" role="progressbar" style="width: 80%" aria-valuenow="80"
                             aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
                <div class="col-sm-12 col-md mb-sm-2 mb-0">
                    <div class="text-muted">利润</div>
                    <strong>40.15%</strong>
                    <div class="progress progress-xs mt-2">
                        <div class="progress-bar" role="progressbar" style="width: 40%" aria-valuenow="40"
                             aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- /.col-->
</div>
<!-- /.row-->
</div>
