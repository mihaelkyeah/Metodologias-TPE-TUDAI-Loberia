{include 'templates/header.tpl'}




{foreach from=$materials item=materiales}
    <div class="bs-example">
    <div class="panel-group" id="accordion">
        <div class="panel-heading">
            <h4 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne == {$materiales->id_material}">{$materiales->nombre_material}</a>
            </h4>
        </div>
        <div id="collapseOne == {$materiales->id_material}" class="panel-collapse collapse in">  
            <div class="panel-body">
                <p>{$materiales->forma_entrega}</p>
            </div>  
        </div>
    </div>
{/foreach}
</div>



<!-- los materiales llegan en un arreglo con el nombre $materials -->

{include 'templates/footer.tpl'}