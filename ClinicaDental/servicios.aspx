<%@ Page Language="C#" AutoEventWireup="true" CodeFile="servicios.aspx.cs" Inherits="servicios" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clinica Linda Sonrisa</title>
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="css\index.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
    <link rel="icon" href="https://i.ibb.co/sq7gFnd/logo1.png"> 
    <link rel="stylesheet" href="css/servicios.css">
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
            <div class="container">
                <a class="navbar-brand" href="index.aspx">Clinica Linda Sonrisa</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                    aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="quienessomos.aspx">Quienes somos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="servicios.aspx">Servicios</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contacto.aspx">Contacto</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="login.aspx">Iniciar sesión</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="register.aspx">Registrate</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h1 class="mt-5">Nuestros servicios</h1>
                    <section class="iq-features">
                        <div class="container">
                            <div class="row align-items-center">
                                <div class="col-lg-3 col-md-12"></div>
                                <div class="col-lg-6 col-md-12">
                                    <div class="holderCircle">
                                        <div class="round"></div>
                                        <div class="dotCircle">
                                            <span class="itemDot active itemDot1" data-tab="1">
                                                <i class="fa fa-heartbeat"></i>
                                                <span class="forActive"></span>
                                            </span>
                                            <span class="itemDot itemDot2" data-tab="2">
                                                <i class="fa fa-stethoscope"></i>
                                                <span class="forActive"></span>
                                            </span>
                                            <span class="itemDot itemDot3" data-tab="3">
                                                <i class="fa fa-medkit"></i>
                                                <span class="forActive"></span>
                                            </span>
                                            <span class="itemDot itemDot4" data-tab="4">
                                                <i class="fa fa-ambulance"></i>
                                                <span class="forActive"></span>
                                            </span>
                                            <span class="itemDot itemDot5" data-tab="5">
                                                <i class="fa fa-h-square"></i>
                                                <span class="forActive"></span>
                                            </span>
                                            <span class="itemDot itemDot6" data-tab="6">
                                                <i class="fa fa-heart"></i>
                                                <span class="forActive"></span>
                                            </span>
                                        </div>
                                        <div class="contentCircle">
                                            <div class="CirItem title-box active CirItem1">
                                                <h2 class="title"><span>Prótesis dental</span></h2>
                                                <p>Ésta se recomienda cuando algunos dientes necesitan ser reemplazados</p>
                                                <i class="fa fa-heartbeat"></i>
                                            </div>
                                            <div class="CirItem title-box CirItem2">
                                                <h2 class="title"><span>P.D.C </span></h2>
                                                <p>Reemplazamiento de piezas dentales necesarias.</p>
                                                <i class="fa fa-stethoscope"></i>
                                            </div>
                                            <div class="CirItem title-box CirItem3">
                                                <h2 class="title"><span>Implantes</span></h2>
                                                <p>piezas naturales perdidas por nuestras piezas de titanio de máxima calidad</p>
                                                <i class="fa fa-medkit"></i>
                                            </div>
                                            <div class="CirItem title-box CirItem4">
                                                <h2 class="title"><span>Estética dental</span></h2>
                                                <p>Especialidad encargada del mantenimiento, cuidado y conservación de los dientes,</p>
                                                <i class="fa fa-ambulance"></i>
                                            </div>
                                            <div class="CirItem title-box CirItem5">
                                                <h2 class="title"><span>Composite</span></h2>
                                                <p>materiales de obturación elaborados a base de resina reforzada con partículas de porcelana.</p>
                                                <i class="fa fa-h-square"></i>
                                            </div>
                                            <div class="CirItem title-box CirItem6">
                                                <h2 class="title"><span>Destartraje</span></h2>
                                                <p>Mecanismo mediante el cual se remueve de manera mecánica los depósitos calcáreos.</p>
                                                <i class="fa fa-heart"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-md-12"></div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </form>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="js/servicios.js"></script>

</body>
</html>
