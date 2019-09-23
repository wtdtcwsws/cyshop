// 购买sku
(function () {
    let $buy = $('[data-buy]');

    $buy.click(function () {
        let $quantity = $('[data-quantity]').val();
        let $sku = $('[data-sku]').val();
        let $price = $('[data-price]').text();
        let $stock = $('[data-stock]').text();
        console.log($price);
        $.ajax({
            url: '/product?method=buy',
            data:{
                count:$quantity,
                sku:$sku,
                skuPirce:$price,
                stock:$stock
            },
            success:function (result) {
                alert(result);
            }

        })
    });
})();