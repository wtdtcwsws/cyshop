(function () {
    $('[data-delete]').click(function () {
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