(
    function () {
        $('#addModel').click(function () {
            // 获取模型名称
            let modelName = $('[name=model_name]').val();
            //获取三级分类名称
            let catalog3 = $('[name=catalog3]').val();
            let objs =[];
            // 获取元素集合
            let trs = $('[data-name=attri-list]');
           trs.each(function (k,v) {
               let obj ={};
                let $tds = $(v);
               $tds.children('td').each(function (i,td) {
                   // console.log(td)
                   let $td=$(td)
                   if ($td.attr('data-name')=='attri-item') {
                                 let attri = td.innerText;
                                 obj['attri'] = attri;
                             }
                   if ($td.attr('data-name')== 'attri-value-item') {
                       let value = td.innerText;
                       obj['value'] = value;
                   }
               })

               objs.push(obj);

            });
            // 将json对象转为json字符串
            console.log("json商品模型对象");
            console.log(objs);
            let list = JSON.stringify(objs);
            console.log(list);

            $.ajax({
                url:'/goodsModel?method=addModel',
                data:{
                    modelName:modelName,
                    catalog3:catalog3,
                    group:list
                },
                success:function (result) {
                    if (result == 'true') {
                        alert("success!");
                        window.location.reload();
                    }
                }
            })
        })
    }
)();
