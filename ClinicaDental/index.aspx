<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"/>
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Clinica Linda Sonrisa</title>
  <link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>
  <link rel="stylesheet" href="css\index.css"/>
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet"/>
  <link rel="icon" href="https://i.ibb.co/sq7gFnd/logo1.png"/>
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
          <!-- Page Content -->
  <div class="wrapper">
    <div class="page-header page-header-small">
      <div class="page-header-image" data-parallax="true"
        style="background-image: url('https://i.ibb.co/mv2Z3tg/mitos-sobre-la-salud-bucodental-1.jpg');">
      </div>
      <div class="content-center">
        <div class="container">
          <h1 class="title">Clinica Linda Sonrisa</h1>
          <div class="text-center">
            <a href="https://www.facebook.com/clinicalindasonrisavalpo/" target="_blank" class="btn btn-primary btn-icon btn-round">
              <i class="fab fa-facebook-square"></i>
            </a>
            <a href="https://www.instagram.com/clinicalindasonrisavalpo/" target="_blank" class="btn btn-primary btn-icon btn-round">
              <i class="fab fa-instagram"></i>
            </a>
          </div>
        </div>
      </div>
    </div>
    <div class="section section-about-us">
      <div class="container">
        <div class="row">
          <div class="col-md-8 ml-auto mr-auto text-center">
            <h2 class="title">Nuestra misión</h2>
            <h5 class="description">Otorgar salud y estética bucal a precios accesibles con los más altos estándares de
              calidad, tecnología y servicio a través de constante innovación y capacitación de
              nuestros profesionales, mejorando la calidad de vida y autoestima de los pacientes,
              logrando así ser líderes de la industria odontológica en Chile.</h5>
          </div>
        </div>
        <div class="separator separator-primary"></div>
        <div class="section-story-overview">
          <div class="row">
            <div class="col-md-6">
              <div class="image-container image-left"
                style="background-image: url('https://i.ibb.co/YfMTPWn/dentistas-mascarillas-examen-dental-1153-701.jpg')">
                <!-- First image on the left side -->
                <p class="blockquote blockquote-primary">Somos un equipo de profesionales en constante formación y altamente calificados en el que la excelencia de los tratamientos se combina con un trato amigable y cercano. Para nosotros cada detalle importa.
                  <br>
                  <br>
                </p>
              </div>
              <!-- Second image on the left side of the article -->
              <div class="image-container"
                style="background-image: url('https://i.ibb.co/6Rkqt7M/ortodoncia-cambia-cara-640x300.jpg')">
              </div>
            </div>
            <div class="col-md-5">
              <!-- First image on the right side, above the article -->
              <div class="image-container image-right"
                style="background-image: url('https://i.ibb.co/gRt8xmL/foto-quienes-somos.jpg')">
              </div>
              <h3>Nuestra misión</h3>
              <p>Queremos entregar a toda la familia una atención integral de calidad basada en nuestros años de experiencia, con un ambiente grato, acogedor y amable..
              </p>
              <p>
                Contamos con profesionales altamente capacitados, dispuestos a brindar una excelente atención, sin descuidar la amabilidad, cercanía y transparencia que nos caracteriza.
              </p>
              <p>Nos tomamos el tiempo necesario para escuchar las inquietudes de cada paciente, porque nos importa que se sientan escuchados y tengan una grata experiencia en nuestra clínica, además de recuperar su linda sonrisa, y con ella su autoestima, seguridad y confianza.Adicionalmente, siempre nos preocuparemos en la educación del paciente y en la prevención, para lograr mantener una adecuada salud oral.
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- aqui empieza el footer  -->
    <footer class="footer footer-default">
      <div class="container">
        <nav>
          <ul>
            <li>
              <!--   <a href="https://www.creative-tim.com">
                Creative Tim
              </a> -->
            </li>
            <li>
              <!--  <a href="http://presentation.creative-tim.com">
                About Us
              </a> -->
            </li>
            <li>
              <!-- <a href="http://blog.creative-tim.com">
                Blog
              </a> -->
            </li>
          </ul>
        </nav>
        <div class="copyright" id="copyright">
          <!-- <p>Made with <a href="https://demos.creative-tim.com/now-ui-kit/index.html" target="_blank">Now UI Kit</a> by
            Creative Tim</p> -->
        </div>
      </div>
    </footer>
  </div>
    </form>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</body>
</body>
</html>
