(function (){
	// 获取模态框中的添加按钮
	var modalButton = $('[data-js="modal-button"]');

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
				// 请求成功后的前端处理代码

				if(f){
                    modalButton.attr('data-dismiss','modal');
                    alert("添加成功！");
				}else {
                    alert("添加失败！");
				}

            }
		});


    });

}) ();