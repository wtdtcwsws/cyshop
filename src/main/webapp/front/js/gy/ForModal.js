(function ($) {
    var $sure = $(".editadd");
    $(".editadd").click(function () {
        console.log("in js");
        let address = $("#recipient-add").val();
        let name = $("#message-name").val();
        let phone = $("#message-phone").val();
        let Aid = $(".editadd").attr('data-addId');
        console.log(Aid);
        console.log(name);
        let Oid = $(".editadd").attr('data-orderId');
        $.ajax({
            "url": "/front/DoAjaxForFront?method=ForOrderInfo",
            "method": "get",
            "data": {"address": address, "name": name, "phone": phone, "Aid": Aid, "Oid": Oid},
            "success": function (data) {
                alert("收货信息修改成功");
                console.log("success");
                $("#addressInfo").html(data);
            }
        })
    })


})(jQuery)