(function () {

    $('[data-id]').click(
        function () {
            console.log($(this).attr('data-level'));
            console.log($(this).attr('data-id'));

            $.ajax({
                    url:"/remove/catalog?method=removeCatalog",
                    data:{
                        cataloglevel:$(this).attr('data-level'),
                        catalogid:$(this).attr('data-id')
                    },
                    success:function (result) {
                        console.log(result)
                    }
                }
            )
        }

    )

})();


