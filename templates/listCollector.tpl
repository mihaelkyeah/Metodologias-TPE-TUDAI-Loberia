<div class="container-fluid">
    <table class="table mt-2 text-center table-responsive-sm">
        <thead class="table-dark">
            <tr>
                <th scope="col"><strong>NOMBRE</strong></th>
                <th scope="col"><strong>APELLIDO</strong></th>
                <th scope="col"><strong>DNI</strong></th>
                <th scope="col"><strong>INFO RECOLECTADO</strong></th>
                <th scope="col"><strong>EDITAR</strong></th>
                <th scope="col"><strong>ELIMINAR</strong></th>
            </tr>
        </thead>
        <tbody>
            {foreach from=$collectors item=c}
                <tr class="td__color2">
                    <td>
                        <p class="blockquote">{$c->nombre}</p>
                    </td>
                    <td>
                        <p class="blockquote">{$c->apellido}</p>
                    </td>
                    <td>
                        <p class="blockquote">{$c->nro_dni}</p>
                    </td>
                    <td>----btn----</td>
                    <td>----btn----</td>
                    <td>----btn----</td>
                </tr>
            {/foreach}
        </tbody>
    </table>
</div>