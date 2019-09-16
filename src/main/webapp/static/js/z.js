(function() {
	
	$('form').validate({
		// 开启调试模式
		debug: true,
		// 设置错误信息显示的标签元素
		errorElement: 'span',
		// 设置错误信息的类样式
		// errorClass: 'failed',
		// 设置错误信息的显示位置
		errorPlacement: function(error, input) {
			input.next().append(error);
		},
		success: function(error, input) {
			error.html('<i class="fa fa-check" style="color:green;"></i>')
		},
		// 规则设置
		rules: {
			name: {
				required: true
			},
			phoneName: {
				required: true
			},
			sort: {
				required: true,
				pattern: '[\\w]{1,}'
			},
			distribution: {
				required: true,
				rangelength: [1,2],
				pattern: '[\\w]{1,2}'
			}
		},
		// 验证的提示信息
		messages: {
			name: {
				required: '分类必填'
			},
			phoneName: {
				required: '手机分类必填'
			},
			sort: {
				required: '排序必填',
				pattern: '请填写数字'
			},
			distribution: {
				required: '分佣比例必填',
				rangelength: '分佣比例数值必须是{0}到{1}位数',
				pattern: '请填写数字'
			}
		}
	});
})()
