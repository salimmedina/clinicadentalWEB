<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manualDeUsuario.aspx.cs" Inherits="manualDeUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link rel="icon" href="https://i.ibb.co/sq7gFnd/logo1.png" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Clínica Linda Sonrisa
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet" />
    <!-- CSS Files -->
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper ">
            <div class="sidebar" data-color="white" data-active-color="danger">
                <div class="logo">
                    <a href="#" class="simple-text logo-mini">
                        <div class="logo-image-small">
                            <img src="../img/logo-small.png">
                        </div>
                    </a>
                    <a href="#" class="simple-text logo-normal">Linda Sonrisa
                    </a>
                </div>
                <div class="sidebar-wrapper">
                    <ul class="nav">
                        <li>
                            <a href="./boletas.aspx">
                                <i class="nc-icon nc-money-coins"></i>
                                <p>Boletas</p>
                            </a>
                        </li>
                        <li>
                            <a href="./agendar.aspx">
                                <i class="nc-icon nc-calendar-60"></i>
                                <p>Agendar hora</p>
                            </a>
                        </li>
                        <li class="active">
                            <a href="./perfil.aspx">
                                <i class="nc-icon nc-single-02"></i>
                                <p>Perfil</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="main-panel">
                <!-- Navbar -->
                <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
                    <div class="container-fluid">
                        <div class="navbar-wrapper">
                            <div class="navbar-toggle">
                                <button type="button" class="navbar-toggler">
                                    <span class="navbar-toggler-bar bar1"></span>
                                    <span class="navbar-toggler-bar bar2"></span>
                                    <span class="navbar-toggler-bar bar3"></span>
                                </button>
                            </div>
                            <a class="navbar-brand" href="javascript:;">Perfil</a>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-end" id="navigation">
                            <ul class="navbar-nav">
                                <li class="nav-item btn-rotate dropdown">
                                    <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="nc-icon nc-settings-gear-65"></i>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                                        <a class="dropdown-item" href="#">Manual de ayuda</a>
                                        
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- End Navbar -->
                <div class="content">
                    <h2 class="text-center">Página perfil</h2>
                    <p style="text-align: justify;">
                        Esta es la página perfil, donde puedes ver y editar tus datos personales:	
                    </p>
                    <img src="img/perfil.PNG" alt="...">
                    <p style="text-align: justify;">
                        Puedes cambiarlos con el botón ’actualizar’:
                    </p>
                    <img src="img/CambiarContraseña.PNG" alt="...">
                    <p style="text-align: justify;">
                        Las casillas que se encuentran en gris no son actualizables:
           
                    </p>
                    <img src="img/datosEnGris.PNG"  alt="...">
                    <p style="text-align: justify;">
                        Por otro lado, las casillas blancas son completamente editables:
           
                    </p>
                    <h2 class="text-center">Agendar Hora</h2>
                    <img src="img/agendar.PNG"  alt="...">
                    
                    <p >
                        En esta sección puedes agendar tus horas:
           
                   
                    <img src="img/AgendarHora.PNG" alt="...">
                    <p >
                        Elige una la hora, la fecha de la consulta y el médico con el que te deseas atender:
           
                    </p>
                    
                    <h2 class="text-center">Boletas</h2>
                        <br/>
                    <p >
                          Esta página muestra las boletas de los servicios realizados, dejando un registro de ellos
                          En el detalle se aprecia la fecha de emisión, valor de la consulta, medio de pago, y el servicio realizado:
                    <img src="img/boleta.png" alt="...">
                  

                </div>
                <footer class="footer footer-black  footer-white ">
                    <div class="container-fluid">
                        <div class="row">
                            <nav class="footer-nav">
                            </nav>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <!--   Core JS Files   -->
        <script src="../js/core/jquery.min.js"></script>
        <script src="../js/core/popper.min.js"></script>
        <script src="../js/core/bootstrap.min.js"></script>
        <script src="../js/plugins/perfect-scrollbar.jquery.min.js"></script>
        <!--  Google Maps Plugin    -->
        <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
        <!-- Chart JS -->
        <script src="../js/plugins/chartjs.min.js"></script>
        <!--  Notifications Plugin    -->
        <script src="../js/plugins/bootstrap-notify.js"></script>
        <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
        <script src="../js/paper-dashboard.min.js?v=2.0.1" type="text/javascript"></script>
        <!-- Paper Dashboard DEMO methods, don't include it in your project! -->
        <!-- Paper Dashboard DEMO methods, don't include it in your project! -->
        <script src="../demo/demo.js"></script>

    </form>
</body>
</html>
