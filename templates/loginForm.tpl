{include 'templates/header.tpl'}
<div class="navbar navbar-expand-lg navbar-dark bg-dark text-light">
    <a class="navbar-brand btn-dark" href="home"><strong>Volver a Home</strong></a>
</div>
<div class="col-md-4 offset-md-4 p-3">
    <div class="card text-white bg-success mb-3 center">
        <div class="card-body text-center div-form-body">
            <div class="fondo-blanco text-dark p-3 font-staat">
            <h1> Iniciar Sesion </h1>
            <hr/>
                <form action="login" method="POST">
                    <div>
                        <div>
                            <label class="input-group" for="dates">
                                <span class="color-danger">*</span>
                                Usuario</label>
                            <input type="text" name="username" class="form-control font-input" required>
                        </div>
                        <div>
                            <label class="input-group" for="dates">
                                <span class="color-danger">*</span>
                                Contraseña</label>
                            <input type="password" name="password" class="form-control font-input" required>
                        </div>
                    </div>
                    <br>
                    <input type="submit" class="btn btn-success m-2" value="INGRESAR">
                </form>
            </div>
        </div>
    </div>
</div>
{if !empty($error)}
    <p class="alert alert-danger">{$error}</p>
{/if}
{include 'templates/footer.tpl'}