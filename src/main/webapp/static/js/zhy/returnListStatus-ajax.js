(function () {
    $('[data-id]').change(function () {
        $.ajax({
            url:"/views/refundOrReturnItem?method=updateItemStatus",
            data:{
                id:$(this).attr("data-value"),
                value:$(this).val()
            }
        })
    })
})(jQuery);