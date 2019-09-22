(function () {
    // 新增地址
    $(document).on('click','[data-Aaddress]',function () {
        var address = $('[data-AAmessage]').val();
        var name = $('[data-AAname]').val();
        var phone = $('[data-AAphone]').val();
        var $modal = $(this).closest('.modal');
        console.log("进来没？");
        if( address != "" && name != "" && phone != ""){
            $.ajax({
                url:"/views/checkout?method=addAddress",
                data:{
                    address : address,
                    name : name,
                    phone : phone
                },
                success:function (result) {
                    $modal.modal('hide');
                    $modal.on('hidden.bs.modal',function () {
                        $('#confirmOrder').html(result);
                    });
                }
            })
        }else{
            alert("输入框不能为空！");
        }
    })

    // 修改地址
    $(document).on('click','[data-Daddress]',function () {
        let $confire = $('[data-Daddress]');
        $confire.each(function (index,item) {
            let $item = $(item);
            let $id= parseInt($item.attr("id"));

            if($id == index){
                var $modal1 = $(this).closest('.modal');

                var id = $item.attr("data-UAid");
                let address = "";
                let name = "";
                let phone = "";

                let $address = $('[data-DAmessage]');
                $address.each(function (index1,item1) {
                    let $item1 = $(item1);

                    if(index1 == index){
                        if($item1.val() == null || $item1.val() == ""){
                            address = $item1.attr("placeholder");
                        }else{
                            address = $item1.val();
                        }
                    }
                })

                let $name = $('[data-DAname]');
                $name.each(function (index2,item2) {
                    let $item2 = $(item2);
                    if(index2 == index){
                        if($item2.val() == null || $item2.val() == ""){
                            name = $item2.attr("placeholder");
                        }else{
                            name = $item2.val();
                        }
                    }
                })

                let $phone = $('[data-DAphone]');
                $phone.each(function (index3,item3) {
                    let $item3 = $(item3);
                    if(index3 == index){
                        if($item3.val() == null || $item3.val() == ""){
                            phone = $item3.attr("placeholder");
                        }else{
                            phone = $item3.val();
                        }
                    }
                })

                $.ajax({
                    url:"/views/checkout?method=updateAddress",
                    data:{
                        id : id,
                        address : address,
                        name : name,
                        phone : phone
                    },
                    success:function (result) {
                        $modal1.modal('hide');
                        $modal1.on('hidden.bs.modal',function () {
                            $('#confirmOrder').html(result);
                        });
                    }
                })
            }
        })
    })

    // $(document).on('click','#button-confirm',function () {
    //     $.ajax({
    //         url:$('#form').attr("action"),
    //         data:{
    //             value1:$('#selectStatus').val()
    //         },
    //         success: function (result) {
    //             $('#ui-view').html(result);
    //         }
    //     })
    // })

    var addressDefault = $('[data-addressId]').val();
    $.ajax({
        url:"/views/checkout?method=defaultAdress",
        data:{
            // addressId : addressId,
            addressDefaule : addressDefault
        }
    })

    // 修改地址
    $(document).on('click','[data-addressId]',function () {
        let $addressId = $('[data-addressId]');

        $addressId.each(function (index,item) {
            let $item = $(item);
            let $index= parseInt($item.attr("data-addressId"));

            // if($index == 1){
            //     var addressDefaule = $item.val();
            // }

            if($index == index){
                let addressId = $item.val();

                $.ajax({
                    url:"/views/checkout?method=confirmAdress",
                    data:{
                        addressId : addressId,
                        // addressDefaule : addressDefaule
                    }
                })
            }
        })
    })

})(jQuery);