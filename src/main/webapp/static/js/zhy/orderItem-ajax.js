(function () {
    // $('[data-delete]').click(function () {
    //     let orderId = $(this).attr("id");
    //     console.log(orderId);
    //     $.ajax({
    //         url:"/views/frontOrderItem?method=deleteOrder",
    //         data:{
    //             orderId:orderId
    //         },
    //         success:function (result) {
    //             $('#orderItemTbody').html(result);
    //         }
    //     })
    // })
    $(document).on('click','[data-delete]',function () {
        console.log("进来了！！！！！！！！！！！");
        let orderId = $(this).attr("id");
        console.log(orderId);
        $.ajax({
            url:"/views/frontOrderItem?method=deleteOrder",
            data:{
                orderId:orderId
            },
            success:function (result) {
                $('#orderItemTbody').html(result);
            }
        })
    })
})(jQuery);