// 上传图片到服务器

function upload(event) {

    let $this = $(event);
    let $form = $this.closest("form");

    let formdata = new FormData($form[0]);

    $.ajax({
        type: 'POST',
        url: '/upload?method=uploadImg',
        data: formdata,
        processData: false,  // 告诉jquery不转换数据
        contentType: false,  // 告诉jquery不设置内容格式
    })


}