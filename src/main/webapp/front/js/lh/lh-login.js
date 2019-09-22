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




    // $('[data-js="login-button"]').click(function () {
    //     var account = $('[name="account"]');
    //     var password = $('[name="password"]');
    //
    //     // 获取错误信息标签
    //     var accountError = $('[data-js="account"]');
    //     var passwordError = $('[data-js="password"]');
    //
    //     $.ajax({
    //         url: '/select/member',
    //
    //         data:{
    //             account: account,
    //             password: password
    //         },
    //
    //         success: function (result) {
    //             if(result == "feikong"){
    //                 accountError.html('账号不能为空');
    //                 passwordError.html('密码不能为空');
    //             }else if(result == "denglu"){
    //                 alert("登录成功！")
    //             }else if(result == "cuowu"){
    //                 accountError.html('账号或者密码错误，请重新输入！');
    //                 passwordError.empty();
    //             }
    //         }
    //
    //     });


    // })







}) ();