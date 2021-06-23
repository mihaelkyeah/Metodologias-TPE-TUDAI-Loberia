{include 'header.tpl'}
<div class="col-md-6 offset-md-3 p-3">
    <div class="card text-white bg-success mb-3 center">
        <div class="card-header">Editar material</div>
        <div class="card-body text-center">
            <div class="fondo-blanco text-dark p-3">
                <form action="editar/{$datos->id_material}" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                            <div class="form-group">
                                <label for="dates">Nombre</label>
                                <input type="text" name="name" placeholder="{$datos->nombre_material}">
                            </div>
                            <div class="form-group">
                                <label for="dates">Forma de entrega</label>
                                <input type="text" name="delivery" placeholder="{$datos->forma_entrega}">
                            </div>
                            <div class="form-group">
                                <label for="dates">URL</label>
                                <input type="text" name="video" placeholder="{$datos->video_link}">
                            </div>
                            <div class="form-group">
                                <label for="dates">imagen</label>
                                <input type="file" name="imageToUpload">
                            </div>   
                    </div>   
                    <button type="submit" class="btn btn-success m-2">Guardar</button>
                </form>
            </div>
        </div>
    </div>
</div>