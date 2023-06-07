<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>
  <xsl:param name="TipoMenu" select="Tipomenu">
  </xsl:param>

  <xsl:template match="ClubAmerica">
    <html lang="es">
      <head>
        <meta charset="utf-8"/>
        <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>

        <title>ClubAmerica</title>
        <meta content="" name="description"/>
        <meta content="" name="keywords"/>

        <!-- Favicons -->
        <link href="assets/img/favicon.png" rel="icon"/>
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"/>

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet"/>

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet"/>
        <link href="assets/vendor/aos/aos.css" rel="stylesheet"/>
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"/>
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet"/>
        <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet"/>
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet"/>

        <!-- Template Main CSS File -->
        <link href="assets/css/style.css" rel="stylesheet"/>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'/>
        <link href='http://fonts.googleapis.com/css?family=Damion' rel='stylesheet' type='text/css'/>
        <link href="css/bootstrap.min.css" rel="stylesheet"/>
        <link href="css/font-awesome.min.css" rel="stylesheet"/>
        <link href="css/templatemo-style.css" rel="stylesheet"/>
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
        <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>

        <!-- =======================================================
  * Template Name: Mentor - v4.7.0
  * Template URL: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
      </head>
      <body>
        <!-- ======= Header ======= -->
        <header id="header" class="fixed-top">
          <div class="container d-flex align-items-center">

            <h1 class="logo me-auto">
              <a href="/paginas.aspx?Id=0">
                <xsl:value-of select="Datos/Descripcion"/>
              </a>
            </h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

            <nav id="navbar" class="navbar order-last order-lg-0">
              <ul>
                <xsl:for-each select="Opciones/Opcion">
                  <xsl:choose>
                    <xsl:when test="$TipoMenu=@Id">
                      <li>
                        <a class="active" href="{@Url}">
                          <xsl:value-of select="@Texto"/>
                        </a>
                      </li>
                    </xsl:when>
                    <xsl:otherwise>
                      <li>
                        <a href="{@Url}">
                          <xsl:value-of select="@Texto"/>
                        </a>
                      </li>
                    </xsl:otherwise>
                  </xsl:choose>
                </xsl:for-each>
              </ul>
              <i class="bi bi-list mobile-nav-toggle"></i>
            </nav>
            <!-- .navbar -->


          </div>
        </header>
        <!-- End Header -->
        <xsl:choose>

          <xsl:when test="$TipoMenu=0">
            <xsl:call-template name="Inicio"></xsl:call-template>
          </xsl:when>

          <xsl:when test="$TipoMenu=1">
            <xsl:call-template name="Club"></xsl:call-template>
          </xsl:when>

          <xsl:when test="$TipoMenu=2">
            <xsl:call-template name="Masculino"></xsl:call-template>
          </xsl:when>

          <xsl:when test="$TipoMenu=3">
            <xsl:call-template name="Femenino"></xsl:call-template>
          </xsl:when>

          <xsl:when test="$TipoMenu=4">
            <xsl:call-template name="Mapa"></xsl:call-template>
          </xsl:when>


        </xsl:choose>



        <!-- ======= Footer ======= -->
        <footer id="footer">

          <div class="footer-top">
            <div class="container">
              <div class="row">

                <div class="col-lg-3 col-md-6 footer-contact">
                  <h3>Contacto</h3>
                  <p>

                    <strong>Número:</strong>+525545917192<br/>
                    <strong>Correo:</strong>ramirezadan482@gmail.com<br/>
                  </p>
                </div>

                <div class="col-lg-2 col-md-6 footer-links">


                </div>

                <div class="col-lg-3 col-md-6 footer-links">


                </div>

                <div class="col-lg-4 col-md-6 footer-newsletter">
                  <h4>Suscribete</h4>

                  <form action="" method="post">
                    <input type="Corre" name="Correo"/>
                    <input type="submit" value="Únetenos"/>
                  </form>
                </div>

              </div>
            </div>
          </div>

          <div class="container d-md-flex py-4">

            <div class="me-md-auto text-center text-md-start">
              <div class="copyright">
                GRACIAS POR CONTACTARNOS   :)
                <strong>

                </strong>.
              </div>
              <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/ -->

              </div>
            </div>
            <div class="social-links text-center text-md-right pt-3 pt-md-0">
              <a href="#" class="twitter">
                <i class="bx bxl-twitter"></i>
              </a>
              <a href="#" class="facebook">
                <i class="bx bxl-facebook"></i>
              </a>
              <a href="#" class="instagram">
                <i class="bx bxl-instagram"></i>
              </a>
              <a href="#" class="google-plus">
                <i class="bx bxl-skype"></i>
              </a>
              <a href="#" class="linkedin">
                <i class="bx bxl-linkedin"></i>
              </a>
            </div>
          </div>
        </footer>
        <!-- End Footer -->
        <!-- Vendor JS Files -->
        <script src="assets/vendor/purecounter/purecounter.js"></script>
        <script src="assets/vendor/aos/aos.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>
      </body>

    </html>
  </xsl:template>
  <xsl:template name="Inicio">
    <!-- ======= Hero Section ======= -->
    <section id="hero" class="d-flex justify-content-center align-items-center">
      <div class="container position-relative" data-aos="zoom-in" data-aos-delay="100">
        <h1>
          EL EQUIPO MAS GRANDE,<br/>LIGA MEXICANA MX
        </h1>
        <h2>
          El Club de Fútbol América es un equipo de fútbol
          profesional de la Primera División de México
        </h2>
      </div>
    </section>
    <!-- End Hero -->

    <main id="main">

      <!-- ======= About Section ======= -->
      <section id="about" class="about">
        <div class="container" data-aos="fade-up">

          <div class="row">
            <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
              <img src="assets/img/about.jpg" class="img-fluid" alt=""/>
            </div>
            <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content">
              <h3>Cuahutémoc Blanco Bravo.</h3>
              <p class="fst-italic">
                17 de enero de 1973 (edad 50 años) Naciodo en Ciudad de México
                TEPITO

              </p>
              <ul>
                <li>
                  <i class="bi bi-check-circle"></i>  Campeón de Liga, Campeón de Campeones, Campeón de Concacaf,
                  Campeón de Goleo, Mundialista en Francia 98', Mundialista en Japón/Corea 2002
                </li>
                <li>
                  <i class="bi bi-check-circle"></i> Copa Confederaciones. 1999.
                  Copa Oro. 1996, 1998, 2003, 2009, 2011.
                  Primera División. 2001/2002, 2004/2005.
                  Liga Campeones. 1992, 2006.
                </li>
                <li>
                  <i class="bi bi-check-circle"></i> Es un exfutbolista y político mexicano. Es considerado como uno de los mejores futbolistas mexicanos en la historia; destacó al principio de su carrera como delantero y extremo, para después consolidarse como un volante de creación.
                </li>
              </ul>
              <p>
                Es el segundo máximo goleador histórico del Club América
              </p>

            </div>
          </div>

        </div>
      </section>
      <!-- End About Section -->

      <!-- ======= Counts Section ======= -->

      <!-- End Counts Section -->

      <!-- ======= Why Us Section ======= -->

      <!-- End Why Us Section -->

      <!-- ======= Features Section ======= -->
      <!-- End Features Section -->

      <!-- ======= Popular Courses Section ======= -->
      <section id="CAMPEONATOS" class="campeones">
        <div class="container" data-aos="fade-up">

          <div class="section-title">
            <h2>campeones</h2>
            <p>Campeonatos</p>
          </div>

          <div class="row" data-aos="zoom-in" data-aos-delay="100">

            <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
              <div class="course-item">
                <img src="assets/img/course-1.jpg" class="img-fluid" alt="..."/>
                <div class="course-content">
                  <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4>Oribe Peralta</h4>

                  </div>

                  <h3>
                    <a href="course-details.html">Clausura</a>
                  </h3>
                  <p>13 Liga MX (1965-66, 1970-71, 1975-76, 1983-84, 1984-85, PRODE 1985, 1987-88, 1988-89, Verano 2002, Clausura 2005, Clausura 2013, Apertura 2014 y Apertura 2018)</p>
                  <div class="trainer d-flex justify-content-between align-items-center">
                    <div class="trainer-profile d-flex align-items-center">
                      <img src="assets/img/trainers/trainer-1.jpg" class="img-fluid" alt=""/>

                    </div>

                  </div>
                </div>
              </div>
            </div>
            <!-- End Course Item-->

            <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0">
              <div class="course-item">
                <img src="assets/img/course-2.jpg" class="img-fluid" alt="..."/>
                <div class="course-content">
                  <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4>Moises Muños</h4>

                  </div>

                  <h3>
                    <a href="course-details.html">Titulos</a>
                  </h3>
                  <p>6 Copa MX (1953-54, 1954-55, 1963-64, 1964-65, 1973-74 y Clausura 2019)</p>
                  <div class="trainer d-flex justify-content-between align-items-center">
                    <div class="trainer-profile d-flex align-items-center">
                      <img src="assets/img/trainers/trainer-2.jpg" class="img-fluid" alt=""/>

                    </div>

                  </div>
                </div>
              </div>
            </div>
            <!-- End Course Item-->

            <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0">
              <div class="course-item">
                <img src="assets/img/course-3.jpg" class="img-fluid" alt="..."/>
                <div class="course-content">
                  <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4>Odiame más</h4>

                  </div>

                  <h3>
                    <a href="course-details.html">Última vez campeón</a>
                  </h3>
                  <p>El domingo 16 de diciembre se jugó la Gran Final en la cancha del Estadio Azteca a las 18:30 horas. En un gran partido de las Águilas y con doblete de Edson Álvarez, el América se coronó campeón del Apertura 2018.</p>
                  <div class="trainer d-flex justify-content-between align-items-center">
                    <div class="trainer-profile d-flex align-items-center">
                      <img src="assets/img/trainers/trainer-3.jpg" class="img-fluid" alt=""/>

                    </div>

                  </div>
                </div>
              </div>
            </div>
            <!-- End Course Item-->

          </div>

        </div>
      </section>
      <!-- End Popular Courses Section -->

      <!-- ======= Trainers Section ======= -->

      <!-- End Trainers Section -->

    </main>
    <!-- End #main -->
  </xsl:template>
  <xsl:template name="Club">
    <video controls="" width="100%">
      <source src="/multimedia/historia.mp4"></source>
    </video>


  </xsl:template>
  <xsl:template name="Masculino">
    <video controls="" width="100%">
      <source src="/multimedia/añosdehistoria.mp4"></source>
    </video>


  </xsl:template>

  <xsl:template name="Femenino">
     <video controls="" width="100%">
      <source src="/multimedia/contratacion.mp4"></source>
    </video>

  </xsl:template>

  <xsl:template name="Mapa">
    <script src="//maps.googleapis.com/maps/api/js?key=AIzaSyCWeeateTaYGqsHhNcmoDfT7Us-vLDZVPs&amp;sensor=false&amp;language=en"></script>
    <script src="js/geolocalizacion.js"></script>


    <div class="tm-main-section light-gray-bg">
      <div class="container" id="main">
        <section class="tm-section row">
          <h2 class="col-lg-12 margin-bottom-30">Instalaciones Deportivas</h2>
          <form action="Contacto.aspx" method="post" class="tm-contact-form" oninput="Total.value = numPersonas.valueAsNumber+extraPersonas.valueAsNumber">
            <div class="col-lg-6 col-md-6">
              <div class="form-group">
                <input type="text" id="contact_name" name="contact_name" class="form-control" placeholder="Nombre" required="true" />
              </div>
              <div class="form-group">
                <input type="email" id="contact_email" name="contact_email" class="form-control" placeholder="Correo electrónico" required="true" />
              </div>
              <div class="form-group">
                <input type="number" id="numPersonas" name="numPersonas" class="form-control" value="1" min="1" max="8" required="true" />
              </div>
              <div class="form-group">
                <input type="number" id="extraPersonas" name="extraPersonas" class="form-control" value="0" min="0" max="4" required="true" />
              </div>
              <div class="form-group">
                <input type="date" id="contact_fecha" name="contact_fecha" class="form-control"/>
              </div>
              <div class="form-group">
                <input type="time" id="contact_hora" name="contact_hora" class="form-control" min="09:00:00" max="21:00:00"/>
              </div>
              <div class="form-group">
                <output class="form-control" id="Total">1</output>
              </div>
              <div class="form-group">
              </div>
            </div>
            <div class="col-lg-6 col-md-6">
              <div id="google-map">
                <div id="mapa"></div>
              </div>
            </div>
          </form>
        </section>
      </div>
    </div>
    <script>
      <![CDATA[   
    $(document).ready(function(){
        //Asignamos la hora actual al control de hora
       //var timeControl = $("#contact_hora").get(0);
       var timeControl = document.querySelector('input[type="time"]');  
       var now = new Date(Date.now());
       
       //8:5
       // 08:05
       
      var horas = now.getHours();
       var minutos = now.getMinutes();
       if(horas < 10)
         {
            horas = "0" + horas;
         }
       if(minutos < 10)
         {
            minutos = "0" + minutos;
         } 
       
       <!--var formatted = now.getHours() + ":" + now.getMinutes();-->
      var formatted = horas + ":" + minutos;
      
      timeControl.value = formatted;
   
   //Validamos que se seleccione la fecha a partir del día actual
       var dd= now.getDate();
       var mm= now.getMonth()+1; //Enero = 0
       var yyyy= now.getFullYear();
       if(dd<10){dd='0'+dd;}
       if(mm<10){mm='0'+mm;}
       //2019-12-31    2019-09-01   dd/mm/yyyy 
       var today = yyyy + '-' + mm + '-' + dd;
       
       $("#contact_fecha").attr("min",today);
     
       getGeo();
       dibujaMapa(19.06817734937611, -98.21208802162666);
       
       <!--Latitud y Longitud-->
        
    });
  ]]>


    </script>

  </xsl:template>


</xsl:stylesheet>

