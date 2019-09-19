(function (){
	// 获取模态框中的添加按钮
	var modalButton = $('[data-js="modal-button"]');
	// 点击表格中的删除按钮产生事件
    $('[data-js="delete"]').click(function () {
        // 得到删除按钮
        var datele = $(this);
        // 获取该条信息的编号id标签
        var deteleId = datele.parent().parent().children('[data-js="ids"]');
        // 获取该条信息的编号id内容
        var deteleIdText = deteleId.text();
		$.ajax({
			url:'/delete/member',
			data:{
				id:deteleIdText
			},
		success:function(a) {
				if(a){
					alert("删除成功！")
                    deteleId.parent().remove(

					);
				}
		}
		})
    })
	// 点击添加按钮产生的事件
	modalButton.click(function () {
        // 获取模态框中填入的信息
        var modalAccount = $('[data-js="account"]').val();
        var modalPassword = $('[data-js="password"]').val();
        var modalName = $('[data-js="name"]').val();
        var modalLevel = $('[data-js="level"]').val();
        var modalPhone = $('[data-js="phone"]').val();

		$.ajax({
			url:'/insert/member',
			data:{
				account:modalAccount,
				password:modalPassword,
				name:modalName,
                levelId:modalLevel,
                phone:modalPhone
			},
			success:function (f) {
				if(f){
                    alert("添加成功！");

				}else {
                    alert("添加失败！");
				}

            }
		});


    });

}) ();