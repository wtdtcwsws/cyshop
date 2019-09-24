//添加商品到spu表格，同时添加sku到sku表格
(  function () {
        let $submit = $('[data-id=submit]');

        $submit.click(function (event) {
            let $upload = $('[data-upload]');
            let $dataimg = $('[data-img]');
            let $this = $(event);
            //找到需要遍历的数据
            let spu_name = $('[name=goods_name]').val();
            let c1_id = $('#c1').val();
            let c2_id = $('#c2').val();
            let c3_id = $('#c3').val();
            let c3_name = $('#c3').find(`[value=${c3_id}]`).text();
            let model_id = $('[name="goods_model"]').val();
            let $tr=$('tr[data-id]');
            console.log($upload);
            console.log($dataimg);

            $upload.each(function (k,v) {
                let $v = $(v);
                $v.trigger('click');
            })
            let datas =[];
            $tr.each(function (k,v) {
                let data ={};
                let $v=$(v);
                let description = $v.find('[data-name=description]').val();
                let stock = $v.find('[data-name=stock]').val();
                let price = $v.find('[data-name=price]').val();
                data['description'] = description;
                data['stock'] = stock;
                data['price'] = price;
                datas.push(data);
            })
            console.log(datas);
            let list = JSON.stringify(datas);
            // $.ajax({
            //     url: '/add/goods?method=addSkus',
            //     data:{
            //         spu_name:spu_name,
            //         c1_id:c1_id,
            //         c2_id:c2_id,
            //         c3_id:c3_id,
            //         c3_name:c3_name,
            //         model_id:model_id,
            //         datas:list
            //
            //     },
            //     success:function (result) {
            //
            //             window.alert(result);
            //         if (result) {
            //             window.location.reload();
            //         }
            //
            //     }
            // })
        })
    }
)();