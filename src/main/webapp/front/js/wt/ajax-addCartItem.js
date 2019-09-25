(function () {
    let $addCart = $('[data-cart]');
    $addCart.click(function () {
        let $quantity = $('[data-quantity]').val();
        let $skuId = $('[data-sku]').val();
        console.log($skuId);
        $.ajax({
            url:'/cart?method=addCart',
            data: {
                count: $quantity,
                sku_id: $skuId

            },
            success: function (result) {
                if (result != 1) {
                    alert(result);
                } else {
                    window.location.href="/front/login.jsp";
                }

            }
        })
    })
})();
