// 下单
(function () {
    let $order = $('[data-order]');

    $order.click(function () {
        let $sku_name = $('[data-spu-name]').val();
        let $quantity = $('[data-quantity]').val();
        let $sku = $('[data-sku]:checked').val();
        let $price = $('[data-price]').text();
        let $stock = $('[data-stock]').text();
        console.log($price);
        $.ajax({
            url: '/views/checkout?method=showConfirmOrder',
            data:{
                count:$quantity,
                sku_id:$sku,
                price:$price,
                stock:$stock

            },
            success:function (result) {
                // if (result) {
                //     alert("success!");
                // }
                window.location.href = result;

            }

        })
    });
})();