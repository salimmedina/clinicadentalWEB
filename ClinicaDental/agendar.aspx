<%@ Page Language="C#" AutoEventWireup="true" CodeFile="agendar.aspx.cs" Inherits="agendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <link rel="icon" href="https://i.ibb.co/sq7gFnd/logo1.png" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Clínica Linda Sonrisa
    </title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
        name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet" />
    <!-- CSS Files -->
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
     <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.js"></script>

</head>
<body>

    <form id="form1" runat="server">
        <!-- Google Tag Manager (noscript) -->
        <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-543X5W7" height="0" width="0"
      style="display:none;visibility:hidden"></iframe></noscript>
        <!-- End Google Tag Manager (noscript) -->
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
                        <li>
                            <a href="./boletas.aspx">
                                <i class="nc-icon nc-money-coins"></i>
                                <p>Boletas</p>
                            </a>
                        </li>
                        <li class="active">
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
                            <a class="navbar-brand" href="javascript:;">Agendar hora</a>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation"
                            aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                            <span class="navbar-toggler-bar navbar-kebab"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-end" id="navigation">
                            <ul class="navbar-nav">
                                <li class="nav-item btn-rotate dropdown">
                                    <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink"
                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="nc-icon nc-settings-gear-65"></i>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                                        <a class="dropdown-item" href="manualDeUsuario.aspx">Manual de ayuda</a>

                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- End Navbar -->
                <div class="content">
                    <div class="form-group">
                        <h5>Fecha y hora</h5>
                        <label>Seleccione la fecha y hora de atención</label>
                        <div class="col-md-12">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <div class="input-group date" id="datetimepicker3" data-target-input="nearest">

                                                <asp:TextBox ID="Calendario" runat="server" class="form-control datetimepicker-input"
                                                    data-target="#datetimepicker3"></asp:TextBox>

                                           <%--     <div class="input-group-append" data-target="#datetimepicker3"
                                                    data-toggle="datetimepicker">--%>
                                                    <div class="input-group-text"><i class="fa fa-clock-o"></i></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <script type="text/javascript">
                                        $(document).ready(function () {
                                            $('#Calendario').datetimepicker({
                                                onGenerate: function (ct) {
                                                    jQuery(this).find('.xdsoft_date.xdsoft_weekend')
                                                        .addClass('xdsoft_disabled');
                                                },
                                                weekends: ['01.01.2014', '02.01.2014', '03.01.2014', '04.01.2014', '05.01.2014', '06.01.2014'],
                                                timepicker: true,
                                                format: 'd.m.y H:i',
                                                allowTimes: ['08:00',
                                                    '08:30',
                                                    '09:00',
                                                    '09:30',
                                                    '10:00',
                                                    '10:30',
                                                    '11:00',
                                                    '11:30',
                                                    '12:00',
                                                    '12:30',
                                                    '13:00',
                                                    '13:30',
                                                    '14:00',
                                                    '14:30',
                                                    '15:00',
                                                    '15:30',
                                                    '16:00',
                                                    '16:30',
                                                    '17:00'],
                                                showButtonPanel: true,
                                                showMonthAfterYear: true,
                                                showWeek: true,
                                                showAnim: "drop",
                                                constrainInput: true,
                                                minDate: new Date((new Date().getFullYear()), new Date().getMonth(), new Date().getDate() + 1), //10 dias despues es la fecha minima
                                                maxDate: new Date(new Date().getFullYear(), new Date().getMonth(), new Date().getDate() + 30), //100 dias despues es la fecha minima
                                                defaultDate: new Date(new Date().getFullYear(), new Date().getMonth(), new Date().getDate() + 1), //la fecha por defecto, la fecha mínima
                                            });
                                        });
                                    </script>
                                </div>
                            </div>
                        </div>
                        <asp:HiddenField ID="elJaiden" runat="server" />

                        <div class="form-group">
                            <label>Seleccione un doctor</label>

                            <asp:DropDownList ID="cboDoctores" runat="server" class="form-control" AutoPostBack="true" Width="300" />
                        </div>
                        <div class="form-group">
                            <label>Seleccione un servicio</label>

                            <asp:DropDownList ID="cboServicios" runat="server" class="form-control" AutoPostBack="true" Width="300" />


                        </div>
                    </div>
                    <div class="row">
                        <div class="update ml-auto mr-auto">
                            <%-- <button type="submit" class="btn btn-primary btn-round">Agendar</button>--%>
                            <asp:Button ID="btnGuardar" class="btn btn-primary btn-round" runat="server" Text="AGENDAR" OnClick="btnGuardar_Click" />


                            <asp:Button ID="btnCancelar" OnClick="btnCancelar_Click" class="btn btn-danger btn-round" runat="server" Text="Cancelar" />
                        </div>
                    </div>
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
        <!-- Chart JS -->
        <script src="../js/plugins/chartjs.min.js"></script>
        <!--  Notifications Plugin    -->
        <script src="../js/plugins/bootstrap-notify.js"></script>
        <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
        <script src="../js/paper-dashboard.min.js?v=2.0.1" type="text/javascript"></script>
        <!-- Paper Dashboard DEMO methods, don't include it in your project! -->
        <script src="../demo/demo.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.js"></script>
    <script src="https://raw.githubusercontent.com/moment/moment/develop/moment.js"></script>
    <script src="https://raw.githubusercontent.com/moment/moment/develop/locale/es.js"></script>

    
    </form>
</body>
</html>
