// 商品添加页面，选择商品模型生成对应的sku组合
(function () {
    let $model = $('#model');
    $model.change(function () {
        let $element = $(this);
        $.ajax({
            url: "/add/goods?method=getSkusListByModelId",
            data: {
                model: $element.val()
            },
            success: function (result) {
                let obj = JSON.parse(result);
                console.log(result)
                console.log(obj)
                //一共有几行
                let rowcount = obj.length;
                let $tbody = $('#consku');
                $tbody.empty();
                for (let i = 0; i < rowcount; i++) {
                    $tbody.append(`<tr data-id="${i}">
										<td>
											<div class="row">
												
												<input data-name="description" class="form-control col-12 " readonly type="text" name="sku_description" value="${obj[i]}">
											</div>
										</td>
										<td>
											<div class=" row">
												
												<input data-name="stock" class="form-control col-6 offset-2"  type="text" name="sku_stock">
											</div>
										</td>
										<td>
											<div class=" row">
												
												<input data-name="price" class="form-control col-6"  type="text" name="sku_price">
											</div>
										</td>
										
										<td>
										    
      
      <form action="/upload?method=uploadImg" method="post" enctype="multipart/form-data">
                     <div class="row">
                     <div class="col-8">
                  <input data-img  type="file" name="sku-img" >
                </div>
                 <div class="col-3 ">
                    <a data-upload href="javaScript:;" onclick="upload(this)">
                        <i class="fa fa-upload"></i>
                     </a>
                       </div>
                       </div>
                   </form>
                     <td>
											<div class=" row">
												
												<a data-btn="remove" class="text-primary col" href="javaScript:;" ><i class="fa fa-trash-o"></i></a>
											</div>
										</td>
									</tr>`)
                }
                $('[data-btn=remove]').click(function () {
                    let $tr = $(this).closest('tr');
                    $tr.remove();

                })

            }
        })

    });

})();