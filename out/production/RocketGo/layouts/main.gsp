<%@ page import="com.rocket.go.seguridad.User" %>
<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="RocketGo"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="offcanvas.css"/>
    <asset:javascript src="application.js"/>
    <asset:javascript src="offcanvas.js"/>
    <asset:javascript src="transaccion.js"/>

    <script type="application/javascript">
        $( function() {

        });
    </script>
    <g:layoutHead/>
</head>
<body>
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
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">

                    <li class="dropdown" >
                        <sec:ifNotLoggedIn><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Iniciar Session<span class="caret"></span></a></sec:ifNotLoggedIn>
                        <sec:ifLoggedIn><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><sec:username/><span class="caret"></span></a></sec:ifLoggedIn>
                        <ul class="dropdown-menu">

                            <sec:ifNotLoggedIn>
                                <li><a href="${createLink(uri: '/login')}">Inicia Session</a></li>
                                <li><a href="${createLink(controller: 'user', action: 'createCliente')}">Registrate</a></li>
                            </sec:ifNotLoggedIn>
                            <sec:ifLoggedIn>
                                <li><a href="${createLink(controller: 'logoff')}">Cerrar Session</a></li></li>
                            </sec:ifLoggedIn>
                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-left">
                    <li class="dropdown" >
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Revista<span class="caret"></span></a>
                        <ul class="dropdown-menu">

                            <li><a href="${createLink(controller: 'user', action: 'createCliente')}">Revista</a></li>
                            <li><a href="${createLink(controller: 'user', action: 'createCliente')}">Salud</a></li>
                            <li><a href="${createLink(controller: 'user', action: 'createCliente')}">Tecnologia</a></li>
                            <li><a href="${createLink(controller: 'user', action: 'createCliente')}">Hogar</a></li>
                            <li><a href="${createLink(controller: 'user', action: 'createCliente')}">Cultura</a></li>
                            <li><a href="${createLink(controller: 'user', action: 'createCliente')}">Deporte</a></li>
                            <li><a href="${createLink(controller: 'user', action: 'createCliente')}">Finanzas y Negocios</a></li>
                            <li><a href="${createLink(controller: 'user', action: 'createCliente')}">Entretenimiento</a></li>
                            <li><a href="${createLink(controller: 'user', action: 'createCliente')}">Moda</a></li>
                            <li><a href="${createLink(controller: 'user', action: 'createCliente')}">Belleza</a></li>

                        </ul>
                    </li>

                    <li class="dropdown" >
                       <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">RocketCard <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <sec:ifNotLoggedIn>
                                <li><a href="${createLink(controller: 'user', action: 'createCliente')}">¿Qué es RocketCard?</a></li>
                            </sec:ifNotLoggedIn>
                            <sec:ifLoggedIn>
                                <sec:ifAllGranted roles="ROLE_ADMIN">
                                    <li><a href="${createLink(controller: 'user', action: 'createNegocio')}">Nuevo Negocio</a></li>
                                    <li><a href="${createLink(controller: 'user', action: 'createNegocio')}">Generador de Codigod</a></li>
                                    <li><a href="${createLink(controller: 'logoff')}">Historial de Venta</a></li>
                                </sec:ifAllGranted>
                                <sec:ifAllGranted roles="ROLE_NEGOCIO">
                                    <li><a href="${createLink(controller: 'user', action: 'createCliente')}">Nuevo Socio</a></li>
                                    <li><a href="#" onclick="loadAgregarVenta();">Cargar Venta</a></li>
                                    <li><a href="${createLink(controller: 'logoff')}">Historial de Ventas</a></li>
                                </sec:ifAllGranted>
                                <sec:ifAllGranted roles="ROLE_NEGOCIO_PLUS">
                                    <li><a href="${createLink(controller: 'user', action: 'createCliente')}">Nuevo Socio</a></li>
                                    <li><a href="${createLink(controller: 'logoff')}">Retiro Efectivo RocketCard</a></li>
                                    <li><a href="${createLink(controller: 'venta', action: 'createVenta')}">Cargar Venta</a></li>
                                    <li><a href="${createLink(controller: 'logoff')}">Historial de Ventas</a></li>
                                </sec:ifAllGranted>
                                <sec:ifAllGranted roles="ROLE_CLIENTE">
                                    <li><a href="${createLink(controller: 'logoff')}">Mi Cuenta</a></li>
                                </sec:ifAllGranted>

                            </sec:ifLoggedIn>

                        </ul>
                    </li>

                    <li class="dropdown" >
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Capacitación a Negocios<span class="caret"></span></a>
                    </li>

                    <form class="navbar-form navbar-left">
                        <div class="form-group">
                            <input  type="text" class="form-control" placeholder="Ejemplo: ...">
                        </div>
                        <button type="submit" class="btn btn-default">Buscar</button>
                    </form>

                    <li class="dropdown" >
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Rocket Partnest<span class="caret"></span></a>
                    </li>

                    <li class="dropdown" >
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Directorio de Negocios<span class="caret"></span></a>
                    </li>

                    <li class="dropdown" >
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Concursos y Regalos<span class="caret"></span></a>
                    </li>

                </ul>

            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>

    <div class="container">


    </div>

   <div class="panel-footer">
       <footer>
           <div>
               <dl>
                   <dt>
                       <label>Siguenos en: </label>
                   </dt>
                   <dt>
                       Facebook
                   </dt>
                   <dd>

                   </dd>
                   <dt>
                       Twitter
                   </dt>
                   <dd>

                   </dd>
                   <dt>
                       Instagram
                   </dt>
                   <dd>

                   </dd>
               </dl>
           </div>
       </footer>
   </div>
   <div id="dialogs">

   </div>
</body>
</html>
