{include 'header.tpl'}
<div class="col-md-6 offset-md-3 p-3 font-staat">
    <div class="card text-white bg-success mb-3">
        <div class="card-header div-form">Añadir materiales aceptados</div>
        <div class="card-body text-center div-form-body">
            <div class="fondo-blanco text-dark p-3">
                {if $error}
                    <div class="alert alert-danger" role="alert">
                        {$error}
                    </div>
                {/if}
                {if $success}
                    <div class="alert alert-success" role="alert">
                        {$success}
                    </div>
                {/if}
                <form action="info" method="POST" enctype="multipart/form-data">
                    <div>
                        <label class="input-group" for="name">
                            <span class="color-danger">*</span>
                            Nombre</label>
                        <input name='name' type="text" class="form-control font-input" placeholder="Nombre" required>
                    </div>
                    <div>
                        <label class="input-group" for="condition">
                            <span class="color-danger">*</span>
                            Condicion de entrega</label>
                        <input name='condition' type="text" class="form-control font-input" placeholder="P/ej, secas y aplastadas" required>
                    </div>
                    <div class="form-group">
                        <label for="img" class="input-group">Imagen</label>
                        <input name='img' type="file" class="form-control font-input">
                    </div>
                    <div class="form-group">
                        <label for="url" class="input-group">Link Video Tutorial</label>
                        <input name='url' type="text" class="form-control font-input">
                    </div>

                    <button type="submit" class="btn btn-success m-2">Guardar</button>
                </form>
            </div>
        </div>
    </div>
</div>

{include 'footer.tpl'}