<table class="table mt-2 text-center table-responsive-sm">
    <thead class="table-dark">
        <tr>
            <th scope="col"><strong>MATERIAL</strong></th>
            <th scope="col"><strong>CANTIDAD TOTAL</strong></th>
        </tr>
    </thead>
    <tbody>
        {foreach from=$materials item=mat}
            <tr class="td__color2">
                <td>
                    <p class="blockquote">{$mat->material}</p>
                </td>
                <td>
                    <p class="blockquote">{$mat->total}</p>
                </td>
            </tr>
        {/foreach}
    </tbody>
</table>