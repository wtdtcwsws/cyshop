(function(){

	$('[data-click="btn-inventory"]').click(function () {

        // 得到修改库存按钮
        var inventoryButton = $(this);
        // 得到库存数量的所在的标签
        var inventoryTD = inventoryButton.closest('td').siblings('[data-column="stocks"]').children('[data-column="stock"]');
        // 得到未修改的库存数量
        var inventoryTextIndex = inventoryTD.text();
        // 创建文本框用于输入内容
		inventoryTD.html('<input data-column="new-stock" type="text" class="form-control d-inline-block mr-2" placeholder="新的库存数量" style="width:110px;height:40px;font-size:13px">'
            // 添加确认按钮
            + '<button data-click="inventory-yes" class="btn btn-sm btn-success mr-1" type="submit" href="">'
            + '<i class="fa fa-dot-circle-o"></i>'
            + '<font style="vertical-align: inherit;"><font style="vertical-align: inherit;">确定</font></font>'
            + '</button>'
            // 添加取消按钮
            + '<button data-click="inventory-no" class="btn btn-sm btn-danger" type="reset">'
            + '<i class="fa fa-ban"></i>'
            + '<font style="vertical-align: inherit;"><font style="vertical-align: inherit;">取消</font></font>'
            + '</button>');
        inventoryTD.find('[data-click="inventory-yes"]').click(function () {
            // 获取用户输入信息，进行判断
            var newStock =  $('[data-column="new-stock"]').val();
            //获取对应数据的编号id
            var id = inventoryButton.closest('td').siblings('[data-column="id"]').text();

            if(/^[0-9]+$/.test(newStock)){

                console.log(newStock);
                console.log(id);

            }else {
                $(inventoryTD).siblings('[data-column="hint"]').text("输入值不合规定，请重新输入！(只允许输入正整数)");
            }
        });
        // 点击取消按钮产生的事件
        inventoryTD.find('[data-click="inventory-no"]').click(function () {
            inventoryTD.html(inventoryTextIndex);
            // 启用修改库存按钮，重新生成功能
            // 清空提示div中的内容
            $(inventoryTD).siblings('[data-column="hint"]').empty();
            // 重新启用修改库存按钮
            $('[data-click="btn-inventory"]').attr('disabled', false);
        });
        // 禁用修改库存按钮，防止多次点击出现的BUG
        $(this).attr('disabled', true);
    });

}) ();

	
	
	