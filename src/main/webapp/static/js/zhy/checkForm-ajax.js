(function () {
    $('[data-Aaddress]').click(function () {
        $.ajax({
            url:"/views/checkout?method=AddAddress",
            data:{
                address:$('[data-AAmessage]').val(),
                name:$('[data-AAname]').val(),
                phone:$('[data-AAphone]').val()
            },
            success:(function (result) {
                $('[data-aams]').removeClass("in");
                $('[data-aams]').css({"display":"none"});
            })
        })
    })
})(jQuery);