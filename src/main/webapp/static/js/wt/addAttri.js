(function () {
    let i =0;
    $('#addAttriBtn').click(

        function () {
            let $tbody = $(this).closest('tbody');
            let $attri = $('input[name=attri]').val();
            $tbody.append(`<tr data-name="attri${i++}">
<td>
    ${i}
</td>
<td data-name="attri">
    ${$attri}
</td>
<td>
    <button data-btn="remove"  class="btn  btn-outline-primary btn-sm" role="button"><i class="fa fa-trash" ></i></button>
</td>
							</tr>`);

            $('[data-btn=remove]').click(function () {
                let $tr = $(this).closest('tr');
                $tr.remove();
                i--;
            })

        }
    )
    $('#openAttriValueBtn').click(function () {
        let $attris = $('[data-name=attri]');
        console.log($attris);
        let $select = $('[data-name=optionAttri]');
        $select.empty();
        for (let $attri of $attris) {
            let attri = $attri.innerText;
            $select.append(`<option value="${attri}">${attri}</option>`);
        }

    })

    $('#addAttriValueBtn').click(function () {

        let $select = $('[data-name=optionAttri]');
        let attri = $select.val();
        let attriValue = $('[data-name=attriValue]').val();
        let $tbody = $(this).closest('tbody');
        $tbody.append(`<tr data-name="attri-list">
<td>
    ${i++}
</td>
<td data-name="attri-item">
    ${attri}
</td>
<td data-name="attri-value-item">
    ${attriValue}
</td>
<td>
    <button data-btn="remove-value"  class="btn  btn-outline-primary btn-sm" role="button"><i class="fa fa-trash" ></i></button>
</td>
							</tr>`);



        $('[data-btn=remove-value]').click(function () {
            let $tr = $(this).closest('tr');
            $tr.remove();

        })
    })
})();
