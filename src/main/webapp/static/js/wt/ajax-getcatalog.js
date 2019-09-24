//三级分类下拉框实现，ajax动态加载
(function () {
    let $c1 = $('#c1');

    console.log($c1);
    $('#c1').change(
        function () {
            let $element = $(this);
            $.ajax({
                url:"/add/catalog?method=getCatalog2s",
                data:{
                    catalog1Id:$element.val()
                },
                success:function (result) {
                    let $c2 =   $('#c2');

                    let obj = JSON.parse( result );
                    console.log(obj);
                    $c2.empty();
                    $c2.append("<option>-----</option>");
                    for (let variable of obj) {
                        console.log(variable["id"]);
                        $c2.append(`<option value="${variable['id']}">${variable['name']}</option>`);
                        console.log(variable);
                    }
                    // $c3.append("<option value=`i['id']` >i['name']</option>");


                }
            })
        }
    );

    $('#c2').change(
        function () {
            let $element = $(this);
            $.ajax({
                url:"/add/catalog?method=getCatalog3s",
                data:{
                    catalog2Id:$element.val()
                },
                success:function (result) {
                    let $c3 =   $('#c3');

                    let obj = JSON.parse( result );
                    console.log(obj);
                    $c3.empty();
                    $c3.append("<option>-----</option>");
                    for (let variable of obj) {
                        console.log(variable["id"]);
                        $c3.append(`<option value="${variable['id']}">${variable['name']}</option>`);
                        console.log(variable);
                    }
                    // $c3.append("<option value=`i['id']` >i['name']</option>");


                }
            })
        }
    );
})();


