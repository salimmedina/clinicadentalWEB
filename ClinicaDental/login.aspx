<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

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
                            <a class="nav-link" href="#">Iniciar sesión
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
                    <h4 class="card-title mt-3 text-center">Iniciar sesión</h4>
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-user"></i></span>
                        </div>
                        <asp:TextBox ID="txtUsuario" runat="server" class="form-control" placeholder="Correo" type="text" required></asp:TextBox>
                    </div>
                    <div class="form-group input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fa fa-lock"></i></span>
                        </div>
                        <asp:TextBox ID="txtContrasena" runat="server" class="form-control" placeholder="Contraseña" type="password" required></asp:TextBox>
                    </div>
                   <div class="form-group">
                       <asp:Button ID="btnEntrar" runat="server" Text="Entrar"  type="submit" class="btn btn-primary btn-block" OnClick="btnEntrar_Click"/>
                    </div> 
                    <!-- form-group// -->
                    <p class="text-center">¿No tienes tu cuenta? <a href="register.aspx">Registrate</a> </p>
                </article>
            </div>
            <!-- card.// -->
        </div>
    </form>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>
</html>
