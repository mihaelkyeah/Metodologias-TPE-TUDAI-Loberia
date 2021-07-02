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
                    <td><form class="p-2" method='POST' action="collectors/editar/{$c->id_recolector}">
                            <button type=submit class='btn btn-warning font-staat'>Editar 📝</button>
                        </form>
                    </td>
                    <td>
                    <form class="p-2" method='POST' action="collectors/DELETE/{$c->id_recolector}" > 
                        <button class="btn btn-danger font-staat" type="button" onclick="alertDelete({$c->id_recolector}, '{$c->nombre}', '{$c->apellido}' );">Eliminar ❌</button>
                    </form>
                </td>

            </tr>
        {/foreach}
    </tbody>
</table>
</div>

<script type="text/javascript" src="js/deleteCollector.js"></script>
