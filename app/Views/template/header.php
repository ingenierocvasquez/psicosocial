<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link type="text/css" rel="stylesheet" href="http://psicosocial.test//assets/grocery_crud/themes/bootstrap/css/bootstrap/bootstrap.min.css" />
        <link type="text/css" rel="stylesheet" href="http://psicosocial.test//assets/grocery_crud/themes/bootstrap/css/font-awesome/css/font-awesome.min.css" />
        <link type="text/css" rel="stylesheet" href="http://psicosocial.test//assets/grocery_crud/themes/bootstrap/css/common.css" />
        <link type="text/css" rel="stylesheet" href="http://psicosocial.test//assets/grocery_crud/themes/bootstrap/css/list.css" />
        <link type="text/css" rel="stylesheet" href="http://psicosocial.test//assets/grocery_crud/themes/bootstrap/css/general.css" />
        <link type="text/css" rel="stylesheet" href="http://psicosocial.test//assets/grocery_crud/themes/bootstrap/css/plugins/animate.min.css" />
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css" integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <style>
    img#logo {
        margin: 20px 0px;
    }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>

<header class="container">
    
        <img id="logo"src="<?=base_url().'assets/images/logo.png'?>">

        <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Brand y toggle se agrupan para una mejor visualización en dispositivos móviles -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-menu">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">psicosocial v1.0</a>
                    </div>

                    <!-- Elementos del menú -->
                    <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="<?php echo site_url('home')?>"> <i class="fa-solid fa-house"></i> Inicio</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="fa-solid fa-user"></i> 
                                    Ficha de Datos Generales <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="<?php echo site_url('centro_trabajocontroller/crud_centro_trabajo')?>"> <i class="fa-solid fa-building"></i> Centros de Trabajo</a></li>
                                    <li><a href="<?php echo site_url('colaborador_controller/crud_colaborador')?>"> <i class="fa-solid fa-user-group"></i> Colaboradores</a></li>
                                </ul>
                            </li>
                            <!-- Nuevo menú de pruebas -->
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> 
                                <i class="fa-solid fa-file-lines"></i> Formularios <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="<?php echo site_url('pruebas_fa_controller/crud_forma_a')?>"> <i class="fa-solid fa-file-lines"></i> Formulario Intralaboral Forma A</a></li>
                                    <li><a href="#"> <i class="fa-solid fa-file-lines"></i> Formulario Intralaboral Forma B</a></li>
                                    <li><a href="#"> <i class="fa-solid fa-file-lines"></i> Formulario Extralaboral</a></li>
                                    <li><a href="#"> <i class="fa-solid fa-file-lines"></i> Formulario Estrés</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="fa-solid fa-file-csv"></i> 
                                    Resultados <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="<?php echo site_url('pruebas_fa_controller/vista_resultados_fa')?>"> <i class="fa-solid fa-file-csv"></i> Resultados Intralaboral Forma A</a></li>
                                    <li><a href="#"> <i class="fa-solid fa-file-csv"></i> Resultados Intralaboral Forma B</a></li>
                                    <li><a href="#"> <i class="fa-solid fa-file-csv"></i> Resultados Extralaboral</a></li>
                                    <li><a href="#"> <i class="fa-solid fa-file-csv"></i> Resultados Estrés</a></li>
                                </ul>
                            </li>
                            <!--<li><a href="#">Acerca de</a></li>-->
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> <i class="fa-solid fa-door-open"></i> 
                                    Biervenido: <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href=""> <i class="fa-regular fa-user"></i> Perfil de Usuario</a></li>
                                    <li><a href="#"> <i class="fa-solid fa-right-from-bracket"></i> Cerrar Sesión</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
        </nav>
</header>