(function () {

//点击判断选中还是未选中
$('[data-js="ck"]').click(function () {
    if ($(this).is(":checked")) {
        $(this).parent().siblings($('[data-js="shuliang"]')).html('<input class="form-control" type="text" placeholder="订单中需要退货商品的数量" name="number" >');
    } else {
        $(this).parent().siblings($('[data-js="shuliang"]')).empty();
    }
})

    $('[data-js="submits"]').click(function () {

        // var orderId = $('[name="order_id"]');
        // var time = $('[name="time"]');
        var cause= $('[name="cause"]').val();
        console.log(cause)

        $.ajax({
            url:"/submit/return",
            data:{
                // orderId: orderId,
                // time: time,
                cause: cause
            },
            success: function (result) {
                if (result == "yes"){
                    alert("提交成功！")
                } else{
                    alert("提交失败！")
                }

            }

        })
    })




})();