<div class="col-md-6 offset-md-3 p-3">
    <div class="card text-white bg-success mb-3">
        <div class="card-header">Soliciar retiro de materiales</div>
        <div class="card-body text-center">
            <div class="fondo-blanco text-dark p-3">
                <form action="info" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="name">Nombre</label>
                        <input name='name' type="text">
                    </div>
                    <div class="form-group">
                        <label for="condition">Condicion de entrega</label>
                        <input name='condition' type="text">
                    </div>
                    <div class="form-group">
                        <label for="img">Imagen</label>
                        <input name='img' type="text">
                    </div>
                    <div class="form-group">
                        <label for="url">Video tutorial</label>
                        <input name='url' type="text">
                    </div>
                  
                    <button type="submit" class="btn btn-success m-2">Guardar</button>
                </form>
            </div>
        </div>
    </div>
</div>
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