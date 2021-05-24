{include 'templates/header.tpl'}

<div class="container-fluid">
    <div class="alert alert-success text-center">
        Si su domicilio se encuetra fuera de la distancia de recoleccion de materiales acerque el material en su vehiculo o busque en la seccion de viajes compartidos
    </div>
    <div class="row">
        
        <div class="col-md-4">
            {include 'templates/map.tpl'}
        </div>
        <div class="col-md-8">
            {include 'templates/formRequestPickup.tpl'}
        </div>
    </div>
</div>

{include 'templates/footer.tpl'}