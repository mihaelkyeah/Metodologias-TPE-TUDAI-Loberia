{include 'header.tpl'}
<div class="col-md-6 offset-md-3 p-3">
    <div class="card text-white bg-success mb-3 center">
        <div class="card-header div-form  font-staat">Editar material</div>
        <div class="card-body text-center div-form-body">
            <div class="fondo-blanco text-dark p-3  font-staat">
                <form action="editar/{$datos->id_material}" method="POST" enctype="multipart/form-data">
                    <div>
                        <div>
                            <label class="input-group" for="dates">
                                <span class="color-danger">*</span>
                                Nombre</label>
                            <input type="text" name="name" class="form-control" placeholder="{$datos->nombre_material}"
                                required>
                        </div>
                        <div>
                            <label class="input-group" for="dates">
                                <span class="color-danger">*</span>
                                Forma de entrega</label>
                            <input type="text" name="delivery" class="form-control"
                                placeholder="{$datos->forma_entrega}" required>
                        </div>
                        <div>
                            <label class="input-group" for="dates">URL</label>
                            <input type="text" name="video" class="form-control" placeholder="{$datos->video_link}">
                        </div>
                        <div>
                            <label class="input-group" for="dates">Imagen</label>
                            <input type="file" name="imageToUpload" class="form-control">
                        </div>
                    </div>
                    <input type="submit" class="btn btn-success m-2" value="GUARDAR">
                </form>
                {if !empty($error)}
                    <p class="alert alert-danger">{$error}</p>
                {/if}

            </div>
        </div>
    </div>
</div>
{include 'footer.tpl'}