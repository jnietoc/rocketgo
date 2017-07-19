<%@ page import="com.rocket.go.seguridad.User" %>
<%@ page import="com.rocket.go.rocket.card.Marca" %>

<!doctype html>
<html lang="en" class="no-js" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>

        <g:layoutTitle default="RocketGo"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="paginaInicio.css"/>
    <asset:stylesheet src="carousel.css"/>
    <asset:stylesheet src="offcanvas.css"/>
    <asset:javascript src="application.js"/>
    <asset:javascript src="offcanvas.js"/>
    <asset:javascript src="transaccion.js"/>
    <asset:stylesheet src="signin.css"/>

    <g:layoutHead/>
    <script type="text/javascript">
        $( function() {
            $( "#show-option" ).tooltip({
                show: {
                    effect: "slideDown",
                    delay: 250
                }
            });
            $( "#show1-option" ).tooltip({
                show: {
                    effect: "slideDown",
                    delay: 250
                }
            });
            $( "#show2-option" ).tooltip({
                show: {
                    effect: "slideDown",
                    delay: 250
                }
            });
            $( "#hide-option" ).tooltip({
                hide: {
                    effect: "explode",
                    delay: 250
                }
            });
            $( "#open-event" ).tooltip({
                show: null,
                position: {
                    my: "left top",
                    at: "left bottom"
                },
                open: function( event, ui ) {
                    ui.tooltip.animate({ top: ui.tooltip.position().top + 10 }, "fast" );
                }
            });

            $( "#utilizalo-icon" ).tooltip({
                show: null,
                position: {
                    my: "left top",
                    at: "left bottom"
                },
                open: function( event, ui ) {
                    ui.tooltip.animate({ top: ui.tooltip.position().top + 10 }, "fast" );
                }
            });
        } );
    </script>


</head>
<body>
    <div class="navbar-fixed-top">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                <a class="navbar-brand" href="${createLink(uri: '/')}" style="align-items:center ;padding-left: 15%;"><asset:image class="img-responsive"  src="Logo 206 x 66.jpg" /></a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse nav-justified" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <div class="nav navbar-right form-group">
                             <form class="navbar-form navbar-static-top">
                                <div class="nav navbar-form ">
                                    <input  type="text" class="form-control" placeholder="...">

                                    <button type="submit" class="btn btn-default">Buscar</button>
                                </div>
                            </form>

                        </div>
                        <hr class="featurette-divider" width="100%" style="padding: 0; margin: 0; border: none">

                            <li><a href="#" style="font-size: larger;" >¿Cómo Funciona?</a></li>
                            <li><a href="#" style="font-size: larger;">Mis Beneficios</a></li>
                            <li><g:link controller="marca" action="index" style="font-size: larger;">Marcas</g:link></li>


                            <sec:ifNotLoggedIn>
                                <li><a href="#" style="font-size: larger;">Registrate Gratis</a></li>
                            </sec:ifNotLoggedIn>

                            <sec:ifNotLoggedIn>
                                <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="font-size: larger;">Ingresa </a></li>
                            </sec:ifNotLoggedIn>

                            <sec:ifLoggedIn>
                                <li><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="font-size: larger; border-right: solid thin silver;"><sec:username/><span class="caret"></span></a>
                            </sec:ifLoggedIn>

                            <sec:ifLoggedIn>
                                <li><a href="${createLink(controller: 'logout')}"  style="font-size: larger;">Cerrar Session</a></li>
                            </sec:ifLoggedIn>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    </div>


        <div id="dialogs">

        </div>

<g:layoutBody/>


<div class="nav navbar-fixed-bottom" style="background-color: #080808; color: whitesmoke;">
       <footer style="align-items: center">
           Siguenos:   Facebook<g:link url="http://www.facebook.com/Proyecta%Mas"><asset:image src="facebook.ico" style="height: 2.5%; width: 2.5%; background-color: transparent;" /> </g:link>

           Instagram<g:link url="https://www.instagram.com/proyectamasmn"><asset:image src="instagram.png" style="height: 3%; width: 3%; background-color: transparent;" /></g:link>

           E-Mail<g:link url="https://www.instagram.com/proyectamasmn"> <asset:image src="e.mail.png" style="height: 2%; width: 2%; background-color: transparent;" /></g:link>


       </footer>
   </div>

</body>
</html>
