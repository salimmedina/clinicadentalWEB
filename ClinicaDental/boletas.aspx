<%@ Page Language="C#" AutoEventWireup="true" CodeFile="boletas.aspx.cs" Inherits="boletas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link rel="icon" href="https://i.ibb.co/sq7gFnd/logo1.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Clínica Linda Sonrisa
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <!-- CSS Files -->
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="../demo/demo.css" rel="stylesheet" />
    <style>
        body {
            width: 100%;
            margin: 5px;
        }

        .table-condensed tr th {
            border: 0px solid #6e7bd9;
            color: white;
            background-color: #6e7bd9;
        }

        .table-condensed, .table-condensed tr td {
            border: 0px solid #000;
        }

        tr:nth-child(even) {
            background: #f8f7ff
        }

        tr:nth-child(odd) {
            background: #fff;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">

        <div class="wrapper ">
            <div class="sidebar" data-color="white" data-active-color="danger">
                <div class="logo">
                    <a href="perfil.aspx" class="simple-text logo-mini">
                        <div class="logo-image-small">
                            <img src="../img/logo-small.png">
                        </div>
                    </a>
                    <a href="perfil.aspx" class="simple-text logo-normal">Linda Sonrisa
                    </a>
                </div>
                <div class="sidebar-wrapper">
                    <ul class="nav">
                        <li class="active">
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
                        <li>
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
                            <a class="navbar-brand" href="javascript:;">Boletas</a>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-end" id="navigation">
                            <ul class="navbar-nav">
                                <li class="nav-item btn-rotate dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="nc-icon nc-settings-gear-65"></i>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                                        <a class="dropdown-item" href="manualDeUsuario.aspx">Manual de ayuda</a>
                                     
                                    </div>
                                </li>
                                <li class="nav-item"></li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- End Navbar -->
                <div class="content">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title">Boletas</h4>
                                    <asp:Label ID="TituloBoleta" runat="server" Text=""></asp:Label>
                                </div>
                                <div class="table-responsive">
                                    <asp:HiddenField ID="elEscondido" runat="server" />
                                    <div class="card-body">
                                       
                                        <asp:GridView ID="tblBoleta" runat="server" UseAccessibleHeader="true" CssClass="table table-condensed table-hover" Width="100%">
                                                                   <Columns>
                                                <asp:TemplateField HeaderText="IMPRIMIR_BOLETA/ELIMINAR_BOLETA" >
                                                    <ItemTemplate>
                                                        <asp:Button ID="ImprimirBoleta" class="btn btn-primary btn-round" OnClick="ImprimirBoleta_Click"  runat="server" Text="IMPRIMIR" />
                                                        <asp:Button ID="EliminarBoleta" class="btn btn-danger btn-round"  OnClick="EliminarBoleta_Click" runat="server" Text="ELIMINAR" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <footer class="footer footer-black  footer-white ">
                    <div class="container-fluid">
                        <div class="row">
                            <nav class="footer-nav">
                                <!-- <ul>
              </ul> -->
                            </nav>
                            <div class="credits ml-auto">
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
        <script src="../demo/demo.js"></script>
    </form>
</body>
</html>
