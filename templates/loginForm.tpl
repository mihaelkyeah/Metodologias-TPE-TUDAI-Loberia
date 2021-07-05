{include 'templates/header.tpl'}

<a class="navbar-brand btn-dark" href="home"><strong>ir al home</strong></a>

<form action="login" method="POST">
    <div>
        <div>
            <label class="input-group" for="dates">
                <span class="color-danger">*</span>
                Usuario</label>
            <input type="text" name="username" required>
        </div>
        <div>
            <label class="input-group" for="dates">
                <span class="color-danger">*</span>
                Contraseña</label>
            <input type="password" name="password" required>
        </div>

    </div>
    <input type="submit" class="btn btn-success m-2" value="GUARDAR">
</form>

{if !empty($error)}
    <p class="alert alert-danger">{$error}</p>
{/if}

{include 'templates/footer.tpl'}