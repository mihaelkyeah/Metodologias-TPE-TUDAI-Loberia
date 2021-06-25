<div class="col-md-6 offset-md-3 p-2">
    <div class="card text-white mb-3">
        <div class="card-header font-staat div-form">Solicitar retiro de materiales</div>
        <div class="div-form-body text-center p-3">
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
            <div class="text-dark p-1  font-staat">
                <form action="request" method="POST" enctype="multipart/form-data">
                    <div>
                        <label class="input-group" for="name">
                            <span class="color-danger">*</span>
                            Nombre</label>
                        <input type="text" name='name' class="form-control font-input" placeholder="Nombre"
                            aria-label="First name" maxlength="30">
                    </div>
                    <div>
                        <label class="input-group" for="lastname">
                            <span class="color-danger">*</span>
                            Apellido</label>
                        <input name='lastname' type="text" class="form-control font-input" placeholder="Apellido"
                            aria-label="First name" maxlength="30">
                    </div>
                    <div>
                        <label for="address" class="input-group">
                            <span class="color-danger">*</span>
                            Dirección
                        </label>
                        <input name='address' type="text" class="form-control font-input" placeholder="Dirección"
                            aria-label="First name" maxlength="90">
                    </div>
                    <div>
                        <label class="input-group" for="phoneNumber">
                        <span class="color-danger">*</span>
                        Teléfono</label>
                        <input name='phoneNumber' type="number" class="form-control font-input" placeholder="Telefono"
                            aria-label="First name" min="0" max="9223372036854775807" step="1" required>
                    </div>
                    <div>
                        <label class="input-group" for="phoneNumber">Franja horaria</label>
                        <select class="form-select font-input" name=" horario">
                            <option value='9 a 12'>9 a 12 am</option>
                            <option value='13 a 17'>13 a 17 pm</option>
                        </select>
                    </div>
                    <div>
                        <label class="input-group" for="category">Volumen del material a retirar</label>
                        <select class="form-select font-input" name="category">
                            <option value='A'>Entra en una caja</option>
                            <option value='B'>Entra en el baul de un auto</option>
                            <option value='C'>Entra en la caja de una camioneta</option>
                            <option value='D'>Es necesario un camión</option>
                        </select>
                    </div>
                    <div class="p-2">
                        <label class="input-group" for="category">Adjuntar Imagen</label>
                        <input class="form-control font-input" name="input_name" type="file" id="formFile">
                    </div>
                    <button type="submit" class="btn btn-success m-1">Guardar</button>
                </form>
            </div>
        </div>
    </div>

</div>