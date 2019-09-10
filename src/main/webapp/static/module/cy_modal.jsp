<%--
  Created by IntelliJ IDEA.
  User: 罗海
  Date: 2019/9/10
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>模态框模板</title>
    <%--引入外接css--%>
    <link rel="stylesheet" href="${root}/static/lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${root}/static/lib/font-awesome/css/font-awesome.css">
</head>
<body>
    <button class="btn btn-info" data-toggle="modal" data-target="#modal1">操作确认型模态框</button>

    <div class="modal fade" tabindex="-1" role="dialog" id="modal1">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">提示标题</h4>
                </div>
                <div class="modal-body">
                    <p>此处填写模态框的内容&hellip;</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary">确认</button>

                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <button type="button" class="btn btn-primary" data-toggle="modal" data-target=".bs-example-modal-lg">提示型模态框</button>

    <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                这里书写提示内容
            </div>
        </div>
    </div>




    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">简单输入型模态框</button>
    <%--<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@fat">Open modal for @fat</button>--%>
    <%--<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@getbootstrap">Open modal for @getbootstrap</button>--%>

    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="exampleModalLabel">模态框标题</h4>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <label for="recipient-name" class="control-label">账号:</label>
                            <input type="text" class="form-control" id="recipient-name">
                        </div>
                        <div class="form-group">
                            <label for="message-text" class="control-label">密码:</label>
                            <input type="password" class="form-control" id="message-text">
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary">确定</button>
                </div>
            </div>
        </div>
    </div>




    <script src="${root}/static/lib/jquery/jquery.js"></script>
    <script src="${root}/static/lib/bootstrap/js/bootstrap.js"></script>
    <script src="${root}/static/lib/jquery-validation/jquery.validate.js"></script>


<script>

    // $('#exampleModal').on('show.bs.modal', function (event) {
    //     var button = $(event.relatedTarget) // Button that triggered the modal
    //     var recipient = button.data('whatever') // Extract info from data-* attributes
    //     // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
    //     // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
    //     var modal = $(this)
    //     modal.find('.modal-title').text('New message to ' + recipient)
    //     modal.find('.modal-body input').val(recipient)
    // })
</script>
</body>
</html>
