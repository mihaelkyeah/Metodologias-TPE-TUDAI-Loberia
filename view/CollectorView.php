<?php

require_once('view/View.php');
require_once('libs/smarty/Smarty.class.php');

class CollectorView extends View
{

    public function showListCollectors($collectors)
    {
        $this->getSmarty()->assign('title', 'Recolectores');
        $this->getSmarty()->assign('collectors', $collectors);
        $this->getSmarty()->display('templates/showCollectors.tpl');
    }

    public function showFormEditCollector($collector) {
        $this->getSmarty()->assign('title', 'Editar recolector');
        $this->getSmarty()->assign('collector', $collector);
        $this->getSmarty()->display('templates/formEditCollector.tpl');
    }
}
