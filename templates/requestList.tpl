{include 'templates/header.tpl'}

<div class="container-fluid">
    <table class="table mt-2 text-center table-responsive-sm">
        <thead class="table-dark">
            <tr>
                <th scope="col"><strong>NOMBRE</strong></th>
                <th scope="col"><strong>APELLIDO</strong></th>
                <th scope="col"><strong>DIRECCION</strong></th>
                <th scope="col"><strong>FRANJA HORARIA</strong></th>
                <th scope="col"><strong>TELEFONO</strong></th>
                <th scope="col"><strong>VOLUMEN</strong></th>
                <th scope="col"><strong>IMG</strong></th>
                <th scope="col"><strong>RECOLECTADO</strong></th>
            </tr>
        </thead>
        <tbody>
            {foreach from=$list item=l}
                <tr class="td__color">
                    <td>{$l->nombre}</td>
                    <td>{$l->apellido}</td>
                    <td>{$l->direccion}</td>
                    <td>{$l->franja_horaria}</td>
                    <td>{$l->nro_telefono}</td>
                    <td class="text-warning"><strong>{$l->volumen}</strong></td>
                    {if {$l->imagen}!=null}
                        <td><button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                data-bs-target="#exampleModal{$l->id_pedido}">
                                imagen
                            </button></td>
                    {else}
                        <td>---</td>
                    {/if}

                    {if {$l->recolectado}==0}
                        <td class="color-success">
                            <span class="material-icons">
                                done_all
                            </span>
                        </td>
                    {else}
                        <td class="color-danger">
                            <span class="material-icons">
                                remove_done
                            </span>
                        </td>
                    {/if}
                </tr>
                <!-- Modal -->
                <div class="modal fade" id="exampleModal{$l->id_pedido}" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Imagen Adjunta</h5>
                                <button type="button" class="btn btn-danger" data-bs-dismiss="modal"
                                    aria-label="Close"><strong>X</strong></button>
                            </div>
                            <div class="modal-body">
                                <img src="{$l->imagen}" class="img-thumbnail" alt="Adjunto pedido recolección">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal -->
            {/foreach}
        </tbody>
    </table>
</div>

{include 'templates/footer.tpl'}