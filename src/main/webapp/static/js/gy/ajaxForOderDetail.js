(function () {
    $(".sure").click(function (event) {
        event.preventDefault();
        console.log('langalang');
        // $(this).hide();//隐藏元素
        $.ajax({
            "url": "/views/do-ajax?method=doGet",
            "data": "id=" + $(this).data('totol'),
            "success": function (data) {
                console.log("ajax success");
                $('#ui-view').html(data);

            }
        })
    })
})(jQuery);