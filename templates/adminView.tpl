<!--template para la vista de adminstracion de la pagina.-->
<ul>
    {foreach from=$materials item=material}
    <li>{$material->{$materiales->nombre_material}}</li>
    {/foreach}
</ul>