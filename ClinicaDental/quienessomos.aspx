<%@ Page Language="C#" AutoEventWireup="true" CodeFile="quienessomos.aspx.cs" Inherits="quienessomos" %>

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
    <link rel="stylesheet" href="css/quienes.css" />
</head>
<body>
    <form id="form1" runat="server">
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
            <h2 class="text-center">Quienes somos</h2>
            <div class="row">
                <div class="col-sm-4">
                    <div class="item">
                        <img src="img\6-Tips-para-salir-bien-en-una-foto-si-tienes-brackets.jpg"
                            class="img-thumbnail">
                    </div>
                    <p>
                        Clínica Linda Sonrisa Dental es la red dental más importante del país. Con profesionales
                    altamente capacitados, entrega a sus pacientes una excelente y completa atención.
                    Cada clínica cuenta con equipamientos e insumos de primer nivel, además de
                    confortables salas de espera, conexión de internet inalámbrica vía wi-fi, aire
                    acondicionado, calefacción central, entre otros.
                    </p>
                </div>
                <div class="col-sm-4">
                    <div class="item">
                        <img src="img/Carillas-2-ElSumario.jpg" class="img-thumbnail"></div>
                    <p>
                        Cada clínica de nuestra red, se encuentra aprobada por el SEREMI de
                    Salud, poniendo a disposición de sus pacientes amplios y cómodos box de atención
                    equipados con la más alta tecnología, pabellones de cirugía menor, salas de rayos X
                    con equipos digitales panorámicos, scanner, periapicales, además de contar con sus
                    propias centrales de esterilización.
                    </p>
                </div>
                <div class="col-sm-4">
                    <div class="item">
                        <img src="img/DSC_9907.jpg" class="img-thumbnail"></div>
                    <p>
                        Sus profesionales y tecnología de punta posicionan a Clinica Linda Sonrisa como la red
                    líder en especialistas dentales. Lo esperamos para brindarle el mejor servicio
                    odontológico del país.
                    </p>
                </div>
            </div>
        </div>
    </form>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>
