{include 'header.tpl'}
<div class="col-md-6 offset-md-3 p-3">
    <div class="card text-white bg-success mb-3 center">
        <div class="card-header">Editar material</div>
        <div class="card-body text-center">
            <div class="fondo-blanco text-dark p-3">
                <form action="editar" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="collector">Material</label>
                        <select name="collector">
                            {foreach from=$materials item=material}
                                <option >{$material->nombre_material}</option>
                            {/foreach}
                        </select>
                    </div>
                     <div class="form-group">
                        {foreach from=$datos item=detalle}
                            <div class="form-group">
                                <label for="dates">Forma de entrega</label>
                                <input type="text" name="forma_entrega" value="{$detalle->forma_entrega}">
                            </div>
                            <div class="form-group">
                                <label for="dates">URL</label>
                                <input type="text" name="video" value="{$detalle->video_link}">
                            </div>
                            <div class="form-group">
                                <label for="dates">imagen</label>
                               <input type="file" name="input_name" id="imageToUpload">
                            </div>   
                        {/foreach}
                       </div>   
                    <button type="submit" class="btn btn-success m-2">Guardar</button>
                </form>
            </div>
        </div>
    </div>
</div>