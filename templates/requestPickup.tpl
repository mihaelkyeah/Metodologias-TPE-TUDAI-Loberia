{include 'templates/header.tpl'}

    <div class="container-fluid mt-2">
        <div class="alert alert-warning text-center">
            <b><i>Si su domicilio se encuentra fuera de la distancia de recolección de materiales, acerque el material en su vehículo o busque en la sección de viajes compartidos.</i></b>
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