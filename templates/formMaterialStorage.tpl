{include 'header.tpl'}
<div class="col-md-6 offset-md-3 p-3">
    <div class="card text-white bg-success mb-3">
        <div class="card-header">Registrar peso de material</div>
        <div class="card-body text-center">
            <div class="fondo-blanco text-dark p-3">
                <form action="storage" method="POST">
                    <div class="form-group">
                        <label for="material">material</label>
                        <input name='material' type="text">
                    </div>
                    <div class="form-group">
                        <label for="weight">peso</label>
                        <input name='weight' type="text">
                    </div>
                    <div class="form-group">
                        <label for="date">fecha</label>
                        <input name='date' type="text">
                    </div>
                    <div class="form-group">
                        <label for="collector">recolector</label>
                        <select name="collector">
                            {foreach from=$collectors item=collector}
                                <option value={$collector->id_recolector}>{$collector->nombre} {$collector->apellido}
                                </option>
                            {/foreach}
                        </select>
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
{include 'footer.tpl'}