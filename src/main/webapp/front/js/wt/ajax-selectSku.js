// 选择sku下拉框商品价格，库存发生变化
(function () {
    let $selectSku = $('input[data-sku]');
    $selectSku.change(function () {
        let $skuId = $(this).val();
        let $stock = $('span[data-stock]');
        let $price = $('span[data-price]');
        $.ajax({
            url:'/product?method=selectSku',
            data:{
                skuId:$skuId
            },
            success:function (result) {
                console.log(result)
               let sku  = $.parseJSON(result)
                $stock.empty();
                $stock.append(sku.stock);
                $price.empty();
                $price.append(sku.price);

            }
        })
    })
})();