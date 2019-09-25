(function(){
    let $checkde = $('[data-sku]');
    console.log($checkde);
    $checkde.each(function(K,v){
        let $v = $(v);
        $(this).closest('div').css("border","1px solid DarkGray ")
        console.log($v);
        $v.change(function(){
            $checkde.each(function(k1,v1){
                let $v1 = $(v1);
                $(this).closest('div').css("border","1px solid DarkGray ")

            })
            $(this).closest('div').css("border","2px solid red")

        })
    })

})();