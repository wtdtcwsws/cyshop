// 通过三级分类找到对应的商品模型
(function () {
    let $c3 = $('#c3');

    console.log($c3);
    $c3.change(function () {
            let $element = $(this);
            $.ajax({
                url:"/add/goods?method=getModelByCatalog",
                data:{
                    catalog3Id:$element.val()
                },
                success:function (result) {
                    let $model =   $('#model');

                    let obj = JSON.parse( result );
                    console.log(obj);
                    $model.empty();
                    for (let variable of obj) {
                        console.log(variable["id"]);
                        $model.append(`<option value="${variable['id']}">${variable['name']}</option>`);
                        console.log(variable);
                    }

                }
            })
        }
    );
})();