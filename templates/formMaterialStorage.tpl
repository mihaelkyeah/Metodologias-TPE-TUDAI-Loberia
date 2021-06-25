{include 'header.tpl'}
<div class="col-md-6 offset-md-3 p-3">
    <div class="card text-white bg-success mb-3">
        <div class="card-header div-form font-staat">Registrar peso de material</div>
        <div class="card-body text-center div-form-body">
            <div class="fondo-blanco text-dark p-3">
                <form action="storage" method="POST">
                    <div class="font-staat">
                        <label class="input-group" for="material">
                            <span class="color-danger">*</span>
                            Material</label>
                        <input name='material' type="text" class="form-control font-input" maxlength="256" required>
                    </div>
                    <div class="font-staat">
                        <label class="input-group" for="weight">
                            <span class="color-danger">*</span>
                            Peso</label>
                        <input name='weight' type="number" class="form-control font-input" required>
                    </div>
                    <div class="font-staat">
                        <label class="input-group" for="date">
                            <span class="color-danger">*</span>
                            Fecha</label>
                        <input name='date' type="text" class="form-control font-input" required maxlength="11">
                    </div>
                    <div>
                        <label class="input-group font-staat" for="collector">recolector</label>
                        <select name="collector" class="form-select">
                            {foreach from=$collectors item=collector}
                                <option value={$collector->id_recolector}>{$collector->nombre} {$collector->apellido}
                                </option>
                            {/foreach}
                        </select>
                    </div>
                    <button type="submit" class="btn btn-success m-2">Guardar</button>
                </form>
                {if $error}
                    <p class="alert alert-danger" role="alert">
                        {$error}
                    </p>
                {/if}
                {if $success}
                    <p class="alert alert-success" role="alert">
                        {$success}
                    </p>
                {/if}
            </div>
        </div>
    </div>
</div>
{include 'footer.tpl'}