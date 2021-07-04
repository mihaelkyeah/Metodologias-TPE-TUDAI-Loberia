{include 'templates/header.tpl'}
<div class="d-flex row p-2 justify-content-center">
    <div class="row">
        {foreach from=$materials item=material}
            <div class="accordion accordion-flush" id="accordionFlushExample">
                <div>
                    <div class="div-accordion" id="flush-headingOne">
                        <button class="collapsed btn-grad p-2" type="button" data-bs-toggle="collapse"
                            data-bs-target="#flush-collapseOne{$material->id_material}" aria-expanded="false"
                            aria-controls="flush-collapseOne">
                            {$material->nombre_material} </button>
                    </div>
                    <div id="flush-collapseOne{$material->id_material}" class="accordion-collapse collapse"
                        aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                        <div class="div-accordion-body text-center text-light">
                            {if $isLogged }
                                <div class="row text-center">
                                    <form class="col-6 p-2" method="POST" action="editar_material/{$material->id_material}">
                                        <button class="btn btn-warning font-staat" type="submit">EDITAR 📝</button>
                                    </form>
                                    <form class=" col-6 p-2" method="POST" action="info/DELETE/{$material->id_material}">
                                        <button class="btn btn-danger font-staat" type="submit">Eliminar ❌</button>
                                    </form>
                                </div>
                                <hr />
                            {/if}
                            {if {$material->img_path}!=null}
                                <img src="{$material->img_path}" width="426px" height="240px">
                            {/if}
                            <h3 class="font-staat p-2">{$material->forma_entrega}</h3>
                            {if {$material->video_link}!=null}
                                <iframe width="426" height="240" src="{$material->video_link}" title="YouTube video player"
                                    frameborder="0"
                                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                    allowfullscreen>
                                </iframe>
                            {/if}
                        </div>
                    </div>
                </div>
            </div>
        {/foreach}
    </div>
</div>

<!-- los material llegan en un arreglo con el nombre $materials -->
<div class="row justify-content-center m-2">
    <div class="alert alert-success center m-4 col-8" role="alert">
        <h4 class="font-staat">Video de consejos útiles</h4>
        <div class="video-container">
            <iframe width="853" height="480" src="https://www.youtube.com/embed/BofiLgHVT-w"
                title="Video Tutorial de Reciclaje" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen>
            </iframe>
        </div>
    </div>
</div>
{include 'templates/footer.tpl'}