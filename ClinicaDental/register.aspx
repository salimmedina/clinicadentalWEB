<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>
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
                        <li class="nav-item active">
                            <a class="nav-link" href="index.aspx">Inicio</a>
                        </li>
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
                            <a class="nav-link" href="login.aspx">Iniciar sesión
                            <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="register.aspx">Registrate</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="card bg-light">
                <article class="card-body mx-auto" style="max-width: 400px;">
                    <h4 class="card-title mt-3 text-center">Crea tu cuenta</h4>
                    <!-- NOMBRE// -->
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-user"></i></span>
                        </div>
                        <asp:TextBox ID="lblNombre" runat="server" class="form-control" placeholder="Nombre" required></asp:TextBox>
                    </div>
                    <!-- APELLIDO// -->
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-user"></i></span>
                        </div>
                        <asp:TextBox ID="lblApellido" runat="server" class="form-control" placeholder="Apellido" required></asp:TextBox>
                    </div>
                    <!-- RUT -->
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-user"></i></span>
                        </div>
                        <asp:TextBox ID="lblRut" runat="server" class="form-control" placeholder="RUT" required></asp:TextBox>
                    </div>
                    <!--SUELDO  -->
                    <div class="form-group input-group"> 
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-user"></i></span>
                        </div>   
                        <asp:TextBox ID="txtSueldo" runat="server" class="form-control" placeholder="Sueldo" type="number" required></asp:TextBox>
                    </div>

                    <!-- DIRECCION -->
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-user"></i></span>
                        </div>
                        <asp:TextBox ID="lblDireccion" runat="server" class="form-control" placeholder="Direccion" required></asp:TextBox>
                    </div>
                    <!-- NUMERO/ -->
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-phone"></i></span>
                        </div>
                        <select class="custom-select" style="max-width: 120px;">
                            <option selected="">+569</option>
                            <option value="1">+32</option>
                        </select>
                        <asp:TextBox ID="lblNumero" runat="server" class="form-control" placeholder="Numero"  type="number" required></asp:TextBox>
                    </div>
                    <!-- CORREO -->
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-envelope"></i></span>
                        </div>
                        <asp:TextBox ID="lblCorreo" runat="server" type="email" class="form-control" placeholder="Mail" required></asp:TextBox>
                    </div>
                    <!-- CONTRASEÑA -->
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-lock"></i></span>
                        </div>
                        <asp:TextBox ID="lblContrasena" runat="server" class="form-control" placeholder="Contraseña" type="password" required></asp:TextBox>
                    </div>
                    <!-- REPETIR -->
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-lock"></i></span>
                        </div>
                        <asp:TextBox ID="lblpass2" runat="server" class="form-control" placeholder="Repetir contraseña" type="password" required></asp:TextBox>
                    </div>
                    <!-- AFP -->
                    <div class="form-group">
                        <asp:DropDownList ID="cboSituacion" runat="server"></asp:DropDownList> 
                    </div>         
                    <!-- ALERTA REPETIR CONTRASEÑA-->
                    <div class="alert alert-danger" role="alert" runat="server">
                        <asp:Label ID="errorPass" runat="server" Text=""></asp:Label>
                    </div>   
                    <!-- BOTON CREAR -->
                    <div class="form-group">
                        <asp:Button ID="btnCrear" runat="server" class="btn btn-primary btn-block" Text="Crear cuenta" OnClick="btnCrear_Click" />
                    </div>
                    <!-- BOTON INICIAR SESION-->
                    <p class="text-center">¿Ya tienes tu cuenta? <a href="login.aspx">Iniciar sesión</a> </p>
            </div>
            </div>
            <!-- card.// -->
    </form>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>
