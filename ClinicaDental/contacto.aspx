<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contacto.aspx.cs" Inherits="contacto" %>

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
    <form action="https://docs.google.com/forms/u/2/d/e/1FAIpQLSfH2BAXwoiJpEkdklwdKIdchJn766VQy2Z9AsdRga53isxsCw/formResponse" runat="server">
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
        <div class="row" id="contatti">
            <div class="container mt-5">
                <div class="row" style="height: 550px;">
                    <div class="col-md-6 maps">
                       <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3344.864915984404!2d-71.53537278481143!3d-33.03368918089533!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9689de64e7947737%3A0x9429cc43a59f1e6f!2zw4FsdmFyZXogMjMzNiwgVmnDsWEgZGVsIE1hciwgVmFscGFyYcOtc28!5e0!3m2!1ses-419!2scl!4v1594698802317!5m2!1ses-419!2scl"
                            frameborder="0" style="border: 0; width: 100%; height: 400px;" allowfullscreen></iframe>
                    </div>
                    <div class="col-md-6">
                        <h1>Contacto</h1>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="text" class="form-control mt-2" placeholder="Nombre" name="entry.1945370597" required>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <input type="email" class="form-control mt-2" placeholder="Correo electrónico" name="entry.1354132285" required>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea class="form-control mt-2" placeholder="Déjanos tu mensaje" name="entry.1326403982" required></textarea>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
                                        <label class="form-check-label" for="invalidCheck2">
                                            <a href="terminoYCondiciones.aspx" target="_blank">Acepto los términos y condiciones.</a>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <button type="submit" class="btn btn-primary btn-block" target="_blank">Enviar</button>
                            </div>
                        </div>
							<div class="text-white">
                            <p style="color: black;">Álvarez 2336, Viña del Mar, Valparaíso</p>
                            <p style="color: black;">(+32) 226 8600</p>
                            <p style="color: black;">info@clinicals.cl</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript">var submitted=false;</script>
    <iframe name="hidden_iframe" id="hidden_iframe" style="display: none;"
        onload="if(submitted) {window.location='thankyou.html';}"></iframe>
</body>
</html>
