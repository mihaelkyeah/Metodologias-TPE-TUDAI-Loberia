<div class="col-md-6 offset-md-3 p-3 font-staat">
    <div class="card text-white bg-success mb-3">
        <div class="card-header div-form">Agregar recolector</div>
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
                <form action="collectors" method="POST" enctype="multipart/form-data">
                    <div>
                        <label class="input-group" for="name">
                            <span class="color-danger">*</span>
                            Nombre</label>
                        <input name='name' type="text" class="form-control font-input" placeholder="Nombre" required>
                        <label class="input-group" for="surname">
                            <span class="color-danger">*</span>
                            Nombre</label>
                        <input name='surname' type="text" class="form-control font-input" placeholder="Apellido"
                            required>
                    </div>
                    <div>
                        <label class="input-group" for="id_number">
                            <span class="color-danger">*</span>
                            Numero de documento</label>
                        <input name='id_number' type="number" class="form-control font-input" placeholder="DNI"
                            required>
                    </div>
                    <div>
                        <label class="input-group" for="birth_date">
                            <span class="color-danger">*</span>
                            Fecha nacimiento</label>
                        <input name='birth_date' type="date" class="form-control font-input"
                            placeholder="Fecha Nacimiento" required>
                    </div>
                    <div>
                        <label class="input-group" for="dates">
                            <span class="color-danger">*</span>
                            Vehículo</label>
                        <select name="vehicle" class="form-select" value="{$collector->vehiculo}" required>
                            <option value="A" {if {$collector->vehiculo}=="A" } selected {/if}>A</option>
                            <option value="B" {if {$collector->vehiculo}=="B" } selected {/if}>B</option>
                            <option value="C" {if {$collector->vehiculo}=="C" } selected {/if}>C</option>
                            <option value="D" {if {$collector->vehiculo}=="D" } selected {/if}>D</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-success m-2">Guardar</button>
                </form>
            </div>
        </div>
    </div>
</div>