(function () {

    $('#form').validate({
        // 设置错误信息显示的标签元素
        errorElement:'span',
        // 设置错误信息的显示位置
        errorplacement:function (error,input) {
            input.next().append(error);
        },
        // 规则设置
        rules: {
            account: {
                required: true
            },
            password:{
                required: true
            }
        },
        // 验证的提示信息
        messages:{
            account:{
                required:'<i class="fa fa-minus-circle"></i>  账号不能为空'
            },
            password:{
                required:'<i class="fa fa-minus-circle"></i>  密码不能为空'
            }
        }
    });

}) ();