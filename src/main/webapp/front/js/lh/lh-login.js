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
                required: true,
                remote: '/verify/member'
            },
            password:{
                required: true,
                remote: '/verify/member'
            }
        },
        // 验证的提示信息
        messages:{
            account:{
                required:'<i class="fa fa-minus-circle"></i>  账号不能为空',
                remote:'账号'
            },
            password:{
                required:'<i class="fa fa-minus-circle"></i>  密码不能为空',
                remote:'密码'
            }
        }
    });

    // $('#login').click(function () {
    //     $.ajax({
    //         url:"/verify/member",
    //         data:{
    //           account: account,
    //           password:password
    //         },
    //         success: function (result) {
    //             if(result == "true"){
    //                 $('#valid').html('账号或者密码错误，请重新输入！');
    //             }
    //             console.log(result)
    //         }
    //     });
    // });

}) ();