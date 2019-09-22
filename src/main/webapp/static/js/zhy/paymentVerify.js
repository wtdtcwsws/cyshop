(function () {
    $('#peymentForm').validate({
        errorElement:'span',
        errorPlacement:function(error,input){
            input.parent().next().append(error);
        },
        rules:{
            paymentPassword:{
                required:true
            }
        },
        messages:{
            paymentPassword:{
                required:'<i class="fa fa-remove" style="color: red"></i>请输入支付密码'
            }
        }

    });
})(jQuery);