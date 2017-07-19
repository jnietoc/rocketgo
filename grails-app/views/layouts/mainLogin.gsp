<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="offcanvas.css"/>
    <asset:javascript src="application.js"/>
    <asset:javascript src="offcanvas.js"/>

    <g:layoutHead/>
</head>
<body>
    <nav class="navbar navbar-inverse" style="background-color: black">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false" style="background-color: black">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${createLink(uri: '/')}" >RocketGo</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="background-color: black; color: white">
            <ul class="nav navbar-nav navbar-left" style="background-color: black; color: white">
                <li class="dropdown" >
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">RocketCard <span class="caret"></span></a>
                        <ul class="dropdown-menu" style="background-color: black;color: white">
                            <sec:ifNotLoggedIn>
                                <li style="background-color: black; color: white"><a href="${createLink(controller: 'user', action: 'createCliente')}">¿Qué es RocketCard?</a></li>
                            </sec:ifNotLoggedIn>
                            <sec:ifLoggedIn>
                                <sec:ifAllGranted roles="ROLE_ADMIN">
                                    <li style="background-color: black; color: white"><a href="${createLink(controller: 'user', action: 'createNegocio')}">Registro de Negocio</a></li>
                                    <li style="background-color: black; color: white"><a href="${createLink(controller: 'logoff')}">Historial de Venta</a></li>
                                </sec:ifAllGranted>
                                <sec:ifAllGranted roles="ROLE_NEGOCIO">
                                    <li style="background-color: black; color: white"><a href="${createLink(controller: 'venta', action: 'create')}">Cargar Venta</a></li>
                                    <li style="background-color: black; color: white"><a href="${createLink(controller: 'logoff')}">Historial de Ventas</a></li>
                                </sec:ifAllGranted>
                                <sec:ifAllGranted roles="ROLE_NEGOCIO_PLUS">
                                    <li style="background-color: black; color: white"><a href="${createLink(controller: 'logoff')}">Retiro Efectivo RocketCar</a></li>
                                    <li style="background-color: black; color: white"><a href="${createLink(controller: 'venta', action: 'create')}">Cargar Venta</a></li>
                                    <li style="background-color: black; color: white"><a href="${createLink(controller: 'logoff')}">Historial de Ventas</a></li>
                                </sec:ifAllGranted>
                                <sec:ifAllGranted roles="ROLE_CLIENTE">
                                    <li style="background-color: black; color: white"><a href="${createLink(controller: 'logoff')}">Mi Cuenta</a></li>
                                </sec:ifAllGranted>
                            </sec:ifLoggedIn>
                        </ul>
                    </li>
                </ul>
                    <form class="navbar-form navbar-left" style="background-color: black">
                        <div class="form-group">
                            <input  type="text" class="form-control" placeholder="Ejemplo:...">
                        </div>
                        <button type="submit" class="btn btn-default">Buscar</button>
                    </form>
                <ul class="nav navbar-nav navbar-right" style="background-color: black; color: white">

                    <li class="dropdown" style="background-color: black; color: white">
                        <sec:ifNotLoggedIn><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Iniciar Session<span class="caret"></span></a></sec:ifNotLoggedIn>
                        <sec:ifLoggedIn><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><sec:username/><span class="caret"></span></a></sec:ifLoggedIn>
                        <ul class="dropdown-menu" style="background-color: black; color: white">

                            <sec:ifNotLoggedIn>
                                <li style="background-color: black; color: white"><a href="${createLink(uri: '/login')}">Iniciar Session</a></li>
                                <li style="background-color: black; color: white"><a href="${createLink(controller: 'user', action: 'createCliente')}">Registrate</a></li>
                            </sec:ifNotLoggedIn>
                            <sec:ifLoggedIn><li role="separator" class="divider"></li>
                                <li style="background-color: black; color: white"><a href="${createLink(controller: 'logoff')}">Cerrar Session</a></li></li>
                            </sec:ifLoggedIn>
                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <g:layoutBody/>

    <footer>
        <div>
            <dl>
                <dt>
                    <label>Siguenos en: </label>
                </dt>
                <dt>
                    Facebook
                </dt>
            </dl>
        </div>
    </footer>

</body>
</html>
