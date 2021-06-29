<nav class="navbar navbar-expand-lg navbar-dark bg-dark text-light">
    <div class="container-fluid">
        <a class="navbar-brand btn-dark" href="home"><strong>COOPERATIVA</strong>
            <span class="material-icons color-success">
                recycling
            </span></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item p-1">
                    <a class="nav-link btn-dark font-staat" href="request">Solicitud de Recolección
                        <span class="material-icons">
                            edit_note
                        </span></a>
                </li>
                <li class="nav-item p-1">
                    <a class="nav-link btn-dark font-staat" href="info">Info Materiales
                        <span class="material-icons">
                            info
                        </span></a>
                </li>
                <!--Menu Desplegable-->
                <li class="nav-item dropdown navbar-nav p-1">
                    <a class="nav-link dropdown-toggle btn-dark" href="#" id="navbarDropdown" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        <strong>ADMINISTRACION</strong>
                        <span class="material-icons">
                            settings
                        </span>
                    </a>

                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item font-staat" href="request/list">Lista Solicitudes
                                <span class="material-icons">
                                    list
                                </span></a></li>

                        <li><a class="dropdown-item font-staat" href="info/new">Agregar Material
                                <span class="material-icons">
                                    add
                                </span>
                            </a></li>
                        <hr />
                        <li><a class="dropdown-item font-staat" href="storage">Depósito Materiales
                                <span class="material-icons">
                                    inventory
                                </span></a></li>
                    </ul>
                </li>
                <!-- Fin Menu Desplegable-->
            </ul>
        </div>
    </div>
</nav>