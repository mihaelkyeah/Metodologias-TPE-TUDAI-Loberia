{include 'templates/header.tpl'}
<div class="row justify-content-center m-2">
{foreach from=$materials item=materiales}
    <div class="bs-example bg-success text-white col-8" style="border-radius: 15 px;">
        <div class="panel-group" id="accordion">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="text-white" data-toggle="collapse" data-parent="#accordion"
                        href="#collapseOne == {$materiales->id_material}">{$materiales->nombre_material}</a>
                </h4>
            </div>
            <div id="collapseOne == {$materiales->id_material}" class="panel-collapse collapse in alert alert-success">
                <div class="panel-body">
                    <p>{$materiales->forma_entrega}</p>
                </div>
            </div>
        </div>
    </div>
{/foreach}
</div>


<!-- los materiales llegan en un arreglo con el nombre $materials -->
<div class="row justify-content-center m-2">
<div class="alert alert-success center m-4 col-8" role="alert">
<h4>Video de consejos utiles</h4>
    <video width="853" height="480" controls>
    <source src="../video/videoInfo.webm" type=video/webm>
    </video>
</div>
</div>
{include 'templates/footer.tpl'}