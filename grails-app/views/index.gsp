<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>RocketGo!</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
    <div class="bannerInicio">
        <div class="container" >
            <div class="nav navbar-left">
                <form class="form-horizontal" role="form" action="${postUrl ?: '/login/authenticate'}" method='POST' id='loginForm' autocomplete="off">
                    <br/>

                    <h4 class="h4" align="center" ><g:message code="INGRESA A TU CUENTA"/></h4>
                    <g:if test='${flash.message}'>
                        <div class='alert alert-danger' role="alert">${flash.message}</div>
                    </g:if>

                    <div class="nav navbar-form">
                        <asset:image class="imagenLogin" src="Número de Tarjeta.png"/>

                        <input class="form-control" name="${usernameParameter ?: 'username'}" id="username" autofocus="" required="" type="text" placeholder="${message(code: "*Número de Tarjeta ")}">
                    </div>

                    <div class="nav navbar-form">
                        <asset:image  class="imagenLogin" src="contraseña.png"/>

                        <input class="form-control" name="${passwordParameter ?: 'password'}" id="password" required="" type="password" placeholder="${message(code: "*Contraseña")}">
                    </div>

                    <div class="nav navbar-form">
                        <label for='remember_me'>
                            <input type="checkbox" value="remember-me" name="${rememberMeParameter ?: 'remember-me'}" id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>>
                            <g:message code="springSecurity.login.remember.me.label"/>
                        </label>
                    </div>
                    <br/>
                    <div class="nav navbar-form" align="center">
                        <button class="btn btn-lg"  style="background-color: #bf0913; color: white" type="submit" id="submit" value='${message(code: "springSecurity.login.button")}'>
                            <g:message code="INGRESAR"/>
                        </button>
                    </div>

                </form>
            </div>

            <div class="navbar-right" style="width: 40%; height: 200%; align-items: center;" >
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1" class=""></li>
                        <li data-target="#myCarousel" data-slide-to="2" class=""></li>
                        <li data-target="#myCarousel" data-slide-to="3" class=""></li>
                        <li data-target="#myCarousel" data-slide-to="4" class=""></li>
                        <li data-target="#myCarousel" data-slide-to="5" class=""></li>
                        <li data-target="#myCarousel" data-slide-to="6" class=""></li>
                        <li data-target="#myCarousel" data-slide-to="7" class=""></li>
                        <li data-target="#myCarousel" data-slide-to="8" class=""></li>
                        <li data-target="#myCarousel" data-slide-to="9" class=""></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">

                        <div class="item active">
                            <asset:image class="img-responsive" src="ingrid.jpg"/>
                        </div>

                        <div class="item">
                            <asset:image class="img-responsive" src="totinos.jpg"/>
                        </div>

                        <div class="item">
                            <asset:image class="img-responsive" src="mrt.jpeg"/>
                        </div>
                        <div class="item">
                            <asset:image class="img-responsive" src="pollo.jpg"/>
                        </div>
                        <div class="item">
                            <asset:image class="img-responsive" src="porto.jpg"/>
                        </div>
                        <div class="item">
                            <asset:image class="img-responsive" src="studios.jpeg"/>
                        </div>
                        <div class="item">
                            <asset:image class="img-responsive" src="es.jpg"/>
                        </div>
                        <div class="item">
                            <asset:image class="img-responsive" src="taqueria.jpg"/>
                        </div>
                        <div class="item">
                            <asset:image class="img-responsive" src="yummi.jpg"/>
                        </div>
                        <div class="item">
                            <asset:image class="img-responsive" src="zfida.jpg"/>
                        </div>
                    </div>
                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Anterior</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Siguiente</span>
                    </a>
                </div>
            </div>
        </div>
    </div>



    <br/>
    <br/>
    <p align="center" style="top: 10%; font-family:'Segoe UI Black';font-size: xx-large ">REGISTRATE TOTALMENTE GRATIS</p>
    <div class="navbar nav-justified" style="min-width: 100%;">
        <div class="row">
            <div class="col-sm-4 col-md-3">
                <div class="thumbnail" style="border: none">
                    <p><a onclick="document.getElementById('realiza').scrollIntoView(true)"><asset:image  src="1.png" style="width: 55%"/></a></p>
                    <div class="caption">
                        <p align="center" style="top: 10%; font-family:'Segoe UI Black';font-size: x-large;color: #bf0913 ">Realiza </p><p style="top: 10%; font-family:'Segoe UI Black';font-size: large; text-align: center ">compras en negocios afiliados</p>
                    </div>
                </div>

            </div>
            <div class="col-sm-4 col-md-3">
                <div class="thumbnail" style="border: none">
                    <p><a onclick="document.getElementById('acumula').scrollIntoView(true)" ><asset:image  src="2.png" style="width: 55%"/></a></p>
                    <div class="caption">
                        <p align="center" style="top: 10%; font-family:'Segoe UI Black';font-size: x-large;color: #bf0913 ">Acumula </p><p style="top: 10%; font-family:'Segoe UI Black';font-size: large; text-align: center">dinero electrónico</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-md-3">
                <div class="thumbnail" style="border: none">
                    <p><a onclick="document.getElementById('canjea').scrollIntoView(true)"><asset:image  src="3.png" style="width: 55%"/></a></p>
                    <div class="caption">
                        <p align="center" style="top: 10%; font-family:'Segoe UI Black';font-size: x-large;color: #bf0913 ">Canjéalo </p><p style="top: 10%; font-family:'Segoe UI Black';font-size: large; text-align: center">por dinero en efectivo</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-md-3">
                <div class="thumbnail" style="border: none">
                    <p><a onclick="document.getElementById('utiliza').scrollIntoView(true)"><asset:image  src="4.png" style="width: 55%"/></a></p>
                    <div class="caption">
                        <p align="center" style="top: 10%; font-family:'Segoe UI Black';font-size: x-large;color: #bf0913 ">Utilízalo </p><p style="top: 10%; font-family:'Segoe UI Black';font-size: large; text-align: center">para realizar más compras</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <hr id="realiza" style="padding: 5%" class="featurette-divider">

    <div class="row featurette"  >
        <div class="col-md-7">
            <h2 class="featurette-heading">REALIZA <span class="text-muted">compras en negocios afiliados</span></h2>
            <p class="lead">Disfruta de los beneficios que te ofrecen las marcas afiliadas a RocketCard y descubre que entre más compras más ganas.</p>
        </div>
        <div class="col-md-5">
            <asset:image  class="featurette-image img-responsive center-block" src="1.png" style="width: 55%" alt="Compra"/>
        </div>
    </div>
    <hr id="acumula" class="featurette-divider" style="padding: 5%">

    <div class="row featurette">
        <div class="col-md-7 col-md-push-5">
            <h2 class="featurette-heading">ACUMULA <span class="text-muted">dinero electrónico</span></h2>
            <p class="lead">Por cada compra que realices te regresan dinero electrónico que se acumulará en tu cuenta de socio RocketCard y lo puedes utilizar para realizar más compras.</p>
        </div>
        <div class="col-md-5 col-md-pull-7">
            <asset:image  class="featurette-image img-responsive center-block" src="2.png" style="width: 55%" alt="Acumula"/>
        </div>
    </div>

    <hr id="canjea" class="featurette-divider" style="padding: 5%">

    <div class="row featurette">
        <div class="col-md-7">
            <h2 class="featurette-heading">CANJÉALO <span class="text-muted">por dinero en efectivo</span></h2>
            <p class="lead">Busca a las marcas plus y en estos establecimientos puedes canjear tu dinero electrónico por dinero en efectivo.</p>
        </div>
        <div class="col-md-5">
            <asset:image  class="featurette-image img-responsive center-block" src="3.png" style="width: 55%"/>
        </div>
    </div>

    <hr id="utiliza" class="featurette-divider" style="padding: 5%">
    <div class="row featurette">
        <div  class="col-md-7 col-md-push-5">
            <h2 class="featurette-heading">UTILÍZALO <span class="text-muted">para realizar más compras</span></h2>
            <p class="lead">Utiliza tu dinero como lo prefieras y recuerda comprar en las marcas afiliadas para seguir ganando.</p>
        </div>
        <div class="col-md-5 col-md-pull-7">
                <asset:image  class="featurette-image img-responsive center-block" src="4.png" style="width: 55%"/>
        </div>
    </div>
    <hr class="featurette-divider">


    <button class="glyphicon-level-up right" href="#" type="button"style="float: right"></button>
    <br/>
    <p align="center" style="top: 10%; font-family:'Segoe UI Black';font-size: xx-large ">DESCUENTOS, PROMOCIONES Y DINERO ELECTRÓNICO</p>

    <button class="glyphicon-level-up right" href="#" type="button"style="float: right"></button>
    <div class="navbar nav-justified">
        <div class="row">
            <div class="col-sm-4 col-md-3">
                <div class="thumbnail" style="border: none">
                    <p><a id="recibe-option" ><asset:image  src="PROMO.png" style="width: 65%"/></a></p>
                    <div class="caption">
                        <p align="center" style="top: 10%; font-family:'Segoe UI Black';font-size: x-large;color: #bf0913 ">Recibe</p><p style="top: 10%; font-family:'Segoe UI Black';font-size: large; text-align: center ">promociones exclusivas</p>
                    </div>
                </div>

            </div>
            <div class="col-sm-4 col-md-3">
                <div class="thumbnail" style="border: none">
                    <p><a id="show1-option" ><asset:image  src="PREMIOS.png " style="width: 65%"/></a></p>
                    <div class="caption">
                        <p align="center" style="top: 10%; font-family:'Segoe UI Black';font-size: x-large;color: #bf0913 ">Participa </p><p style="top: 10%; font-family:'Segoe UI Black';font-size: large; text-align: center">para obtener premios.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-md-3">
                <div class="thumbnail" style="border: none">
                    <p><a id="show2-option"  ><asset:image  src="COMPRAS.png" style="width: 65%"/></a></p>
                    <div class="caption">
                        <p align="center" style="top: 10%; font-family:'Segoe UI Black';font-size: x-large;color: #bf0913 ">Ahorra </p><p style="top: 10%; font-family:'Segoe UI Black';font-size: large; text-align: center">tus compras cotidianas te hacen ganar.</p>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 col-md-3">
                <div class="thumbnail" style="border: none">
                    <p><a id="utilizalo-icon"  ><asset:image  src="AHORRO.png" style="width: 65%"/></a></p>
                    <div class="caption">
                        <p align="center" style="top: 10%; font-family:'Segoe UI Black';font-size: x-large;color: #bf0913 ">Utilíza </p><p style="top: 10%; font-family:'Segoe UI Black';font-size: large; text-align: center">tu RocketCard como cuenta de ahorrro.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
