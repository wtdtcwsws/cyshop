(function (){
	// 获取模态框中填入的信息
	var modalAccount = document.getElementById('modal-account').value;
	var modalPassword = document.getElementById('modal-password').innerText;
	var modalName = document.getElementById('modal-name').innerText;
	var modalLevel = document.getElementById('modal-level').innerText;
	var modalPhone = document.getElementById('modal-phone').innerText;

	// 获取表格中的编号
	var memberId = document.getElementById('member-id').nodeType;
	var memberValue = memberId + 1;
	// 获取模态框的编号标签
	var modalId = document.getElementById('modal-id');
	modalId.innerText = memberValue;
		
	// 获取模态框中的添加按钮
	var modalButton = document.getElementById('modal-button');
	
	// 获取页面中的表格的id，用于添加信息
	var memberTable = document.getElementById('member-table');
	
	
	
	// 点击添加按钮产生的事件
	modalButton.onclick = function(){
		console.log(modalAccount);
		console.log(modalPassword);
		var memberTr = document.createElement("tr");
		
		memberTr.innerHTML =		
		+ '<td>' + memberValue + '</td>' 
		+ '<td>' + modalAccount + '</td>'
		+ '<td>' + modalPassword + '</td>' 
		+ '<td>' + modalName + '</td>' 
		+ '<td>' + modalLevel + '</td>' 
		+ '<td>' + modalPhone + '</td>' 
		+ '<td>'
		+ '<label class="switch switch-label switch-success">'
		+ '<input class="switch-input" type="checkbox" checked>'
		+ '<span class="switch-slider" data-checked="✓" data-unchecked="✕"></span>'
		+ '</label>'
		+ '</td>'
		+ '<td>'
		+ '<button class="btn btn-danger" type="button" style="height: 30px;width: 100px;">'
		+ '<i class="fa fa-trash mr-1">删除</i>'
		+ '</button>'
		+ '</td>';
		
		memberTable.appendChild(memberTr);
			
		
	}
	
	
}) ();