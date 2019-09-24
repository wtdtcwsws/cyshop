(function () {
    $(".sure").click(function () {
        // event.preventDefault();//关闭默认时间响应
        console.log('确认发货');
        // $(this).hide();//隐藏元素
        $.ajax({
            "url": "/views/do-ajaxAll?method=sendGoods",
            "method":"POST",
            "data": {"id":$(this).data('totol'),"num":$("#recipient-name").val()},//传递参数id和输入的参数
            "success": function (data) {
                console.log("ajax success");
                $('#ui-view').html(data);

            }
        })
    })
    $(".del").click(function (event) {
        event.preventDefault();
        console.log('删除订单');
        // $(this).hide();//隐藏元素
        $.ajax({
            "url": "/views/do-ajaxAll?method=delGoods",
            "method":"get",
            "data": "id=" + $(this).data('totol'),
            "success": function (data) {
                console.log("ajax success");
                $('#ui-view').html(data);

            }
        })
    })
    $(".cancel").click(function (event) {
        event.preventDefault();
        console.log('取消订单');
        // $(this).hide();//隐藏元素
        $.ajax({
            "url": "/views/do-ajaxAll?method=cancelGoods",
            "method":"get",
            "data": "id=" + $(this).data('totol'),
            "success": function (data) {
                console.log("ajax success");
                $('#ui-view').html(data);

            }
        })
    })
})(jQuery);
