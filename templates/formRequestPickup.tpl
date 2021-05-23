<div class="col-md-6 offset-md-3 p-3">
    <div class="card text-white bg-primary mb-3">
        <div class="card-header">Soliciar retiro de materiales</div>
        <div class="card-body text-center">
            <div class="fondo-blanco text-dark p-3">
                <form action="request" method="POST">
                    <div class="form-group">
                        <label for="name">Nombre</label>
                        <input name='name' type="text">
                    </div>
                    <div class="form-group">
                        <label for="lastname">Apellido</label>
                        <input name='lastname' type="text">
                    </div>
                    <div class="form-group">
                        <label for="address">Direccion</label>
                        <input name='address' type="text">
                    </div>
                    <div class="form-group">
                        <label for="phoneNumber">Telefono</label>
                        <input name='phoneNumber' type="text">
                    </div>
                    <div class="form-group">
                        <label for="category">Volumen del material a retirar</label>
                        <select name="category">
                            <option value='A'>Entra en una caja</option>
                            <option value='B'>Entra en el baul de un auto</option>
                            <option value='C'>Entra en la caja de una camioneta</option>
                            <option value='D'>Es necesario un camion</option>
                        </select>
                    </div>
                    <input type="file" name="input_name">
                    <button type="submit" class="btn btn-primary m-2">Guardar</button>
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