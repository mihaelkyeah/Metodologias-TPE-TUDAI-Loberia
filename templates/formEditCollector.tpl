{include 'header.tpl'}
<div class="col-md-6 offset-md-3 p-3">
<div class="card text-white bg-success mb-3 center">
    <div class="card-header div-form  font-staat">Editar recolector</div>
    <div class="card-body text-center div-form-body">
        <div class="fondo-blanco text-dark p-3  font-staat">
            <form action="editar/recolector/{$collector->id_recolector}" method="POST" enctype="multipart/form-data">
                <div>
                    <div>
                        <label class="input-group" for="dates">
                            <span class="color-danger">*</span>
                            Nombre</label>
                        <input type="text" name="name" class="form-control font-input" value="{$collector->nombre}"
                            required>
                    </div>
                    <div>
                        <label class="input-group" for="dates">
                            <span class="color-danger">*</span>
                            Apellido</label>
                        <input type="text" name="surname" class="form-control font-input" value="{$collector->apellido}"
                            required>
                    </div>
                    <div>
                        <label class="input-group" for="dates">
                            <span class="color-danger">*</span>
                            Nro DNI</label>
                        <input type="text" maxlength="11" name="id_number" class="form-control font-input" value="{$collector->nro_dni}"
                            required>
                    </div>
                    <div>
                        <label class="input-group" for="dates">
                            <span class="color-danger">*</span>
                            Fecha Nacimiento</label>
                        <input type="text" name="birth_date" class="form-control font-input" value="{$collector->fecha_nacimiento}"
                            required>
                    </div>
                    <div>
                        <label class="input-group" for="dates">
                            <span class="color-danger">*</span>
                            Vehículo</label>
                        <select name="vehicle" class="form-select" value="{$collector->vehiculo}"
                            required>
                            <option value="A"
                                {if {$collector->vehiculo} == "A"}
                                    selected
                                {/if}>A</option>
                            <option value="B"
                                {if {$collector->vehiculo} == "B"}
                                    selected
                                {/if}>B</option>
                            <option value="C"
                                {if {$collector->vehiculo} == "C"}
                                    selected
                                {/if}>C</option>
                            <option value="D"
                                {if {$collector->vehiculo} == "D"}
                                    selected
                                {/if}>D</option>
                        </select>
                    </div>
                </div>
                <input type="submit" class="btn btn-success m-2" value="GUARDAR">
            </form>
            {if !empty($error)}
                <p class="alert alert-danger">{$error}</p>
            {/if}

        </div>
    </div>
</div>
</div>
{include 'footer.tpl'}