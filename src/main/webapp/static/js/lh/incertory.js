(function(){
	// 得到修改库存按钮
	var inventoryButton = document.getElementById('btn-inventory');
	// 得到库存数量的标签
	var inventoryText = document.getElementById('inventory');
	// 得到未修改的库存数量
	var inventoryTextIndex = inventoryText.innerText;
	
	// 当点击修改库存按钮时的事件
	inventoryButton.onclick = function(){
		// 在存放库存数量的标签中覆盖修改的标签
		// 添加新库存输入框
		inventoryText.innerHTML = '<input type="text" class="form-control d-inline-block mr-2" placeholder="新的库存数量" style="width:110px;height:40px;font-size:13px">' 
		// 添加确认按钮
		+ '<button id="inventory-yes" class="btn btn-sm btn-success mr-1" type="submit">'
		+ '<i class="fa fa-dot-circle-o"></i>'
		+ '<font style="vertical-align: inherit;"><font style="vertical-align: inherit;">确定</font></font>'
		+ '</button>' 
		// 添加取消按钮
		+ '<button id="inventory-no" class="btn btn-sm btn-danger" type="reset">'
		+ '<i class="fa fa-ban"></i>'
		+ '<font style="vertical-align: inherit;"><font style="vertical-align: inherit;">取消</font></font>'
		+ '</button>';
		
		// 得到修改库存的按钮
		var inventoryYes = document.getElementById('inventory-yes');
		// 得到取消修改库存的按钮
		var inventoryNo = document.getElementById('inventory-no');
		// 当点击确认修改库存按钮时的事件
		inventoryYes.onclick = function(){
			console.log('进行修改库存数的操作');
		}
		// 当点击取消修改库存按钮时的事件
		inventoryNo.onclick = function(){
			inventoryText.innerHTML = inventoryTextIndex;
		}
		
	};
	
}) ();

	
	
	