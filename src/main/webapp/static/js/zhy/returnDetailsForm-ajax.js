(function () {
    $(function () {
        $("#btn").click(function(){
            $.ajax({
                url:$('#creatOrderForm').attr("action"),
                data:{
                    value1:$('#selectStatus').val()
                },
                success: function (result) {
                    $('#ui-view').html(result);
                }
            })
        })
    })
})(jQuery);