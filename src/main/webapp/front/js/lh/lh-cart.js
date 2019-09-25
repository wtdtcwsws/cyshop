(function () {

var shanchumodal = $('[data-js="shanchusku"]');
var shanchu = $('[data-js="shanchu"]');
var ss;
shanchu.click(function () {
    ss = $(this).attr("data-jss");
    console.log(ss)
})

shanchumodal.click(function () {
    console.log("删除")
    console.log(ss)
    $.ajax({
        url:"/delete/cart",
        data:{
            cartId: ss
        },
        success: function (result) {
            if (result == "chenggong"){
                $('[data-js="quxiaoshanchu"]').trigger('click');
                alert("商品已删除！")
            } else{
                $('[data-js="quxiaoshanchu"]').trigger('click');
                alert("商品删除失败，请稍后在试！")
            }

        }
    })

})

})();

var color = "rgb(210,241,242)";
function jiashuliang(jia){
    color = "rgb(210,241,242)"
    let $jia = $(jia);
    let shuliang = Number($jia.prev().find('input').val());
    let ss = $jia.parent().parents().siblings($('[data-js="xuanze11"]')).children($('[data-js="xuanze"]'));
    ss.prop("checked",true);
    $jia.parent().parent().parent().css('background-color', color);
    let shuliangAdd = shuliang + Number(1);
    $jia.siblings($('[role="group"]')).children($('[data-js="shuliang"]')).val(shuliangAdd);
}

function jianshuliang(jian) {
    color = "rgb(210,241,242)"
    let $jian = $(jian);
    let shuliang = Number($jian.parent().find('input').val());
    let ss = $jian.parent().parents().siblings($('[data-js="xuanze11"]')).children($('[data-js="xuanze"]'));
    ss.prop("checked", true);
    $jian.parent().parent().parent().css('background-color', color);
    if (shuliang > 1) {
        let shuliangJian = shuliang - Number(1);
        $jian.siblings($('[role="group"]')).children($('[data-js="shuliang"]')).val(shuliangJian);
    }
}

// 单点击
function danshangping(dan) {
    let $dan = $(dan);
    if(dan.checked){
        color = "rgb(210,241,242)";
        $dan.prop("checked",true);
        $dan.parent().parent().css('background-color',color);
    }else{
        color = "transparent";
        $dan.prop("checked",false);
        $dan.parent().parent().css('background-color',color);
    }

}

// 全选
function quanxuan(quan) {
    let $quan = $(quan);
    if(quan.checked){
        color = "rgb(210,241,242)";
        $('[data-js="xuanze"]').prop("checked",true);
        $('[data-js="suoyou"]').children().css('background-color',color);
    }else{
        color = "transparent";
        $('[data-js="xuanze"]').prop("checked",false);
        $('[data-js="suoyou"]').children().css('background-color',color);
    }
}

// 提交订单
function tijiao(jiao) {

   console.log("提交")
   let $xuanzhong = $('[data-js="xuanze"]');
   var $skuId = [];
   var $shuliangs = [];
   var i = 0;

    $xuanzhong.each(function (k,v) {
       let $v = $(v);
       if($v.prop("checked")) {
           let $sku =  $v.attr("data-sku");
           let $shuliang = $v.parent().siblings($('[data-js="shuliangs"]')).find($('[data-js="shuliang"]')).val();
            // 将所有选中的sku和数量添加
           $skuId.push($sku)
           $shuliangs.push($shuliang)
       }
    });
    let skuId = JSON.stringify($skuId);
    let shuliangs = JSON.stringify($shuliangs);

    $.ajax({
        url:"/xuanze/cart",
        data:{
            skuId:skuId,
            shuliangs:shuliangs
        },
        success: function (retult) {
            // if (retult == "no"){
            //
            // }
            window.location = retult;
        }
    })

   
}