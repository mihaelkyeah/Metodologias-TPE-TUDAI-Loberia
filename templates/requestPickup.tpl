{include 'templates/header.tpl'}
{include 'templates/nav.tpl'}

<div>
    <form action="request" method="POST">
        <div>
            <label for="name">Nombre</label>
            <input name='name' type="text">
        </div>
        <div>
            <label for="lastname">Apellido</label>
            <input name='lastname' type="text">
        </div>
        <div>
            <label for="address">Direccion</label>
            <input name='address' type="text">
        </div>
        <div>
            <label for="phoneNumber">Telefono</label>
            <input name='phoneNumber' type="text">
        </div>
        <div>
        <label for="volume">Volumen del material a retirar</label>
          <select name="collection">
	            <option value='A'>Entra en una caja</option>
                <option value='B'>Entra en el baul de un auto</option>
                <option value='C'>Entra en la caja de una camioneta</option>
                <option value='D'>Es necesario un camion</option>
          </select>
        </div>
        <input type="file" name="input_name">
        <button type="submit">Guardar</button>
    </form>
</div>

{if $error}
    <div role="alert">
        {$error}
    </div>
{/if}

{include 'templates/footer.tpl'}