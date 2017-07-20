<%@ page import="com.rocket.go.rocket.card.Marca" %>

<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <asset:stylesheet src="application.css"/>
        <asset:stylesheet src="bootstrap.css"/>
        <asset:stylesheet src="carousel.css"/>
        <asset:stylesheet src="offcanvas.css"/>
        <asset:stylesheet src="marcas.css"/>
        <asset:stylesheet src="modal.css"/>
        <asset:javascript src="application.js"/>
        <asset:javascript src="offcanvas.js"/>
        <title><g:message code="default.list.label" args="[entityName]" /></title>

    </head>

    <body>


    <div class="dropdown" style="padding-top: 40%">
        <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Categorias
        <span class="caret"></span>
        </button>

        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
            <li><a href="#">Bares</a></li>
            <li><a href="#">Restaurantes</a></li>
            <li><a href="#">Tiendas de Ropa</a></li>
        </ul>
    </div>

            <br/>
            <br/>

            <div class="navbar nav-justified" style="padding-top: 10%" >
                <div class="row">
                    <div class="col-sm-3 col-md-3" style="margin-bottom: 2%;">
                        <div class="thumbnail todoelTumbnail" >
                            <p><a><asset:image style="width: 60%" src="zfida.jpg" /></a></p>
                            <div class="caption">
                                <p class="negritasInfoThumnails" align="center">Dirección: <span class="text-muted infoThumnail">Av. de la Americas #1183</span></p>
                                <p class="negritasInfoThumnails" align="center">Teléfono: <span class="text-muted infoThumnail">(044)445-456-9277</span></p>

                                <p align="center"><a href="#" class="btn btn-primary" data-toggle="modal" data-target="#login-modalZfida" role="button">Ver Más</a></p>

                            </div>
                        </div>

                    </div>

                    <div class="col-sm-3 col-md-3" style="margin-bottom: 2%">
                        <div class="thumbnail todoelTumbnail" >
                            <p><a  ><asset:image  src="porto.jpg" style="width: 60%"/></a></p>
                            <div class="caption">
                                <p class="negritasInfoThumnails" align="center">Dirección: <span class="text-muted infoThumnail">Cantera#253</span></p>
                                <p class="negritasInfoThumnails" align="center">Teléfono: <span class="text-muted infoThumnail">(044)445-111-3754</span></p>
                                <p align="center"><a href="#" class="btn btn-primary" data-toggle="modal" data-target="#login-modalPorto" role="button">Ver Más</a></p>

                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3 col-md-3" style="margin-bottom: 2%">
                        <div class="thumbnail todoelTumbnail" >
                            <p><a><asset:image  src="taqueria.jpg" style="width: 60%"/></a></p>
                            <div class="caption">
                                <p class="negritasInfoThumnails" align="center">Dirección: <span class="text-muted infoThumnail">Lago Zurich #131</span></p>
                                <p class="negritasInfoThumnails" align="center">Teléfono: <span class="text-muted infoThumnail">(044)445-456-9277</span></p>
                                <p align="center"><a href="#" class="btn btn-primary" data-toggle="modal" data-target="#login-modalTaqueria" role="button">Ver Más</a></p>

                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3 col-md-3" style="margin-bottom: 2%">
                        <div class="thumbnail todoelTumbnail">
                            <p><a><asset:image  src="pollo.jpg" style="width: 60%"/></a></p>
                            <div class="caption">
                                <p class="negritasInfoThumnails" align="center">Dirección: <span class="text-muted infoThumnail">Av. Morelos #34</span></p>
                                <p class="negritasInfoThumnails" align="center">Teléfono: <span class="text-muted infoThumnail">(044)4451098733</span></p>
                                <p align="center"><a href="#" class="btn btn-primary" data-toggle="modal" data-target="#login-modalPollo" role="button">Ver Más</a></p>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-3 col-md-3" style="margin-bottom: 2%">
                        <div class="thumbnail todoelTumbnail">
                            <p><a><asset:image  src="studios.jpeg" style="width: 60%"/></a></p>
                            <div class="caption">
                                <p class="negritasInfoThumnails" align="center">Dirección: <span class="text-muted infoThumnail">Hidalso #35</span></p>
                                <p class="negritasInfoThumnails" align="center">Teléfono: <span class="text-muted infoThumnail">45-762-42</span></p>
                                <p align="center"><a href="#" class="btn btn-primary" data-toggle="modal" data-target="#login-modalStudios" role="button">Ver Más</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3 col-md-3" style="margin-bottom: 2%">
                        <div class="thumbnail todoelTumbnail">
                            <p><a><asset:image  src="ingrid.jpg" style="width: 60%"/></a></p>
                            <div class="caption">
                                <p class="negritasInfoThumnails" align="center">Dirección: <span class="text-muted infoThumnail">Liverpool #432</span></p>
                                <p class="negritasInfoThumnails" align="center">Teléfono: <span class="text-muted infoThumnail">45-899-21</span></p>
                                <p align="center"><a href="#" class="btn btn-primary" data-toggle="modal" data-target="#login-modalStudios" role="button">Ver Más</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3 col-md-3" style="margin-bottom: 2%">
                        <div class="thumbnail todoelTumbnail">
                            <p><a><asset:image  src="es.jpg" style="width: 60%"/></a></p>
                            <div class="caption">
                                <p class="negritasInfoThumnails" align="center">Dirección: <span class="text-muted infoThumnail">Mina #835</span></p>
                                <p class="negritasInfoThumnails" align="center">Teléfono: <span class="text-muted infoThumnail">45-754-66</span></p>
                                <p align="center"><a href="#" class="btn btn-primary" data-toggle="modal" data-target="#login-modalStudios" role="button">Ver Más</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-3 col-md-3" style="margin-bottom: 2%">
                        <div class="thumbnail todoelTumbnail">
                            <p><a><asset:image  src="mrt.jpeg" style="width: 60%"/></a></p>
                            <div class="caption">
                                <p class="negritasInfoThumnails" align="center">Dirección: <span class="text-muted infoThumnail">Pipila #2153</span></p>
                                <p class="negritasInfoThumnails" align="center">Teléfono: <span class="text-muted infoThumnail">(044) 445-112-5485</span></p>
                                <p align="center"><a href="#" class="btn btn-primary" data-toggle="modal" data-target="#login-modalMrt" role="button">Ver Más</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        //Modal ZFIDA
                <div class="modal fade" id="login-modalZfida" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="loginmodal-container">
                            <div class = "modal-header" style="padding: 0">
                                <button type = "button" class = "close" data-dismiss = "modal" aria-hidden = "true" style="min-width: 5%; margin-right: 1%; padding: 0">
                                    ×
                                </button>
                            </div>
                                <div class="img-responsive">
                                    <asset:image style="width: 50%;height: 50%" src="modalZfida.jpg"/>
                                </div>

                            <h1 style="font: xx-large 'Segoe UI Black">ZFIDA</h1><br>
                            <form >
                                <p class="negritasInfoThumnails">Dirección: <span class="text-muted infoThumnail">Cantera#253</span></p>
                                <p class="negritasInfoThumnails">Teléfono: <span class="text-muted infoThumnail">(044)445-111-3754</span></p>
                                <p class="negritasInfoThumnails">Horario de Atención: <span class="text-muted infoThumnail">9:00a.m. - 5:00p.m.</span></p>
                                <p class="negritasInfoThumnails">Descripción: <span class="text-muted infoThumnail">Si lo que buscas es moda. </span></p>
                            </form>
                            <hr class="featurette-divider" width="100%" style="padding: 3%; margin: 0; border: none">
                            <div>
                                <ul class="preview-thumbnail nav nav-tabs">
                                    <li class="active"><a data-target="#pic-1" data-toggle="tab"><asset:image src="zfida1.PNG"/></a></li>
                                    <li><a data-target="#pic-2" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                                    <li><a data-target="#pic-3" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                                    <li><a data-target="#pic-4" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                                    <li><a data-target="#pic-5" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                                </ul>
                            </div>

                            <hr class="featurette-divider" width="100%" style="padding: 2%; margin: 0; border: none">

                            <div>
                                <div class="navbar-left">
                                    <p class="negritasInfoThumnails"><asset:image src="facebook.ico" style="height: 5%; width: 5%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales">  /PORTOMX</span></p>
                                    <p class="negritasInfoThumnails"><asset:image src="instagram.png" style="height: 5%; width: 7%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales">  @Porto_oficial</span></p>
                                    <p class="negritasInfoThumnails"><asset:image src="e.mail.png" style="height: 5%; width: 5%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales" >  http://www.porto.mx</span></p>
                                </div>
                                <div class="login-help navbar-right" style="margin-right: 5%">
                                    <div class="rating">
                                        <div class="stars">
                                            <span class="glyphicon glyphicon-star"></span>
                                            <span class="glyphicon glyphicon-star"></span>
                                            <span class="glyphicon glyphicon-star"></span>
                                            <span class="glyphicon glyphicon-star-empty"></span>
                                            <span class="glyphicon glyphicon-star-empty"></span>
                                        </div>

                                        <span class="review-no"><p style="font: large 'Segoe UI'">68 votos</p></span><button class="like btn btn-default" type="button"><span class="glyphicon glyphicon-heart lg"><p style="font: large 'Segoe UI'">VOTAR</p></span></button>
                                    </div>
                                </div>

                            </div>


                    </div>
                </div>

        //Modal Porto
            <div class="modal fade" id="login-modalPorto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="loginmodal-container">
                    <div class = "modal-header" style="padding: 0">
                        <button type = "button" class = "close" data-dismiss = "modal" aria-hidden = "true" style="min-width: 5%; margin-right: 1%; padding: 0">
                            ×
                        </button>
                    </div>
                    <div class="img-responsive">
                        <asset:image style="width: 50%;height: 50%" src="porto.jpg"/>
                    </div>

                    <h1 style="font: xx-large 'Segoe UI Black">PORTO</h1><br>
                    <form >
                        <p class="negritasInfoThumnails">Dirección: <span class="text-muted infoThumnail">Cantera#253</span></p>
                        <p class="negritasInfoThumnails">Teléfono: <span class="text-muted infoThumnail">(044)445-111-3754</span></p>
                        <p class="negritasInfoThumnails">Horario de Atención: <span class="text-muted infoThumnail">9:00a.m. - 5:00p.m.</span></p>
                        <p class="negritasInfoThumnails">Descripción: <span class="text-muted infoThumnail">Si lo que buscas es moda. </span></p>
                    </form>
                    <hr class="featurette-divider" width="100%" style="padding: 3%; margin: 0; border: none">
                    <div>
                        <ul class="preview-thumbnail nav nav-tabs">
                            <li class="active"><a data-target="#pic-1" data-toggle="tab"><asset:image src="zfida1.PNG"/></a></li>
                            <li><a data-target="#pic-2" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                            <li><a data-target="#pic-3" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                            <li><a data-target="#pic-4" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                            <li><a data-target="#pic-5" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                        </ul>
                    </div>

                    <hr class="featurette-divider" width="100%" style="padding: 2%; margin: 0; border: none">

                    <div>
                        <div class="navbar-left">
                            <p class="negritasInfoThumnails"><asset:image src="facebook.ico" style="height: 5%; width: 5%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales">  /PORTOMX</span></p>
                            <p class="negritasInfoThumnails"><asset:image src="instagram.png" style="height: 5%; width: 7%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales">  @Porto_oficial</span></p>
                            <p class="negritasInfoThumnails"><asset:image src="e.mail.png" style="height: 5%; width: 5%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales" >  http://www.porto.mx</span></p>
                        </div>
                        <div class="login-help navbar-right" style="margin-right: 5%">
                            <div class="rating">
                                <div class="stars">
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                    <span class="glyphicon glyphicon-star-empty"></span>
                                </div>

                                <span class="review-no"><p style="font: large 'Segoe UI'">68 votos</p></span><button class="like btn btn-default" type="button"><span class="glyphicon glyphicon-heart lg"><p style="font: large 'Segoe UI'">VOTAR</p></span></button>
                            </div>
                        </div>

                    </div>


                </div>
            </div>

        //Modal Taqueria
            <div class="modal fade" id="login-modalTaqueria" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="loginmodal-container">
                        <div class = "modal-header" style="padding: 0">
                            <button type = "button" class = "close" data-dismiss = "modal" aria-hidden = "true" style="min-width: 5%; margin-right: 1%; padding: 0">
                                ×
                            </button>
                        </div>
                        <div class="img-responsive">
                            <asset:image style="width: 50%;height: 50%" src="taqueria.jpg"/>
                        </div>

                        <h1 style="font: xx-large 'Segoe UI Black">TAQUERÍA</h1><br>
                        <form >
                            <p class="negritasInfoThumnails">Dirección: <span class="text-muted infoThumnail">Av. Morelos #34</span></p>
                            <p class="negritasInfoThumnails">Teléfono: <span class="text-muted infoThumnail">(044)4451098733</span></p>
                            <p class="negritasInfoThumnails">Horario de Atención: <span class="text-muted infoThumnail">9:00a.m. - 6p.m.</span></p>
                            <p class="negritasInfoThumnails">Descripción: <span class="text-muted infoThumnail">Pollos rostizados estilo sinaloa. Contampos con servicio a domicilio.</span></p>
                        </form>
                        <hr class="featurette-divider" width="100%" style="padding: 3%; margin: 0; border: none">
                        <div>
                            <ul class="preview-thumbnail nav nav-tabs">
                                <li class="active"><a data-target="#pic-1" data-toggle="tab"><asset:image src="zfida1.PNG"/></a></li>
                                <li><a data-target="#pic-2" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                                <li><a data-target="#pic-3" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                                <li><a data-target="#pic-4" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                                <li><a data-target="#pic-5" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                            </ul>
                        </div>

                        <hr class="featurette-divider" width="100%" style="padding: 2%; margin: 0; border: none">

                        <div>
                            <div class="navbar-left">
                                <p class="negritasInfoThumnails"><asset:image src="facebook.ico" style="height: 5%; width: 5%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales">  /ElPolloDeOro</span></p>
                                <p class="negritasInfoThumnails"><asset:image src="instagram.png" style="height: 5%; width: 7%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales">  @elPollodeOro</span></p>
                                <p class="negritasInfoThumnails"><asset:image src="e.mail.png" style="height: 5%; width: 5%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales" >  http://www.el pollodeoro.com.mx</span></p>
                            </div>
                            <div class="login-help navbar-right" style="margin-right: 5%">
                                <div class="rating">
                                    <div class="stars">
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                    </div>

                                    <span class="review-no"><p style="font: large 'Segoe UI'">385 votos</p></span><button class="like btn btn-default" type="button"><span class="glyphicon glyphicon-heart lg"><p style="font: large 'Segoe UI'">VOTAR</p></span></button>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>

        //Modal Pollo
        <div class="modal fade" id="login-modalPollo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="loginmodal-container">
                <div class = "modal-header" style="padding: 0">
                    <button type = "button" class = "close" data-dismiss = "modal" aria-hidden = "true" style="min-width: 5%; margin-right: 1%; padding: 0">
                        ×
                    </button>
                </div>
                <div class="img-responsive">
                    <asset:image style="width: 50%;height: 50%" src="pollo.jpg"/>
                </div>

                <h1 style="font: xx-large 'Segoe UI Black">El Pollo de ORO</h1><br>
                <form >
                    <p class="negritasInfoThumnails">Dirección: <span class="text-muted infoThumnail">Lago Zurich #131</span></p>
                    <p class="negritasInfoThumnails">Teléfono: <span class="text-muted infoThumnail">(044)445-456-9277</span></p>
                    <p class="negritasInfoThumnails">Horario de Atención: <span class="text-muted infoThumnail">1:00p.m. - 12:00a.m.</span></p>
                    <p class="negritasInfoThumnails">Descripción: <span class="text-muted infoThumnail">Los tacos mas sabrosos de la región. Contamos con servicio para todos tus eventos. </span></p>
                </form>
                <hr class="featurette-divider" width="100%" style="padding: 3%; margin: 0; border: none">
                <div>
                    <ul class="preview-thumbnail nav nav-tabs">
                        <li class="active"><a data-target="#pic-1" data-toggle="tab"><asset:image src="zfida1.PNG"/></a></li>
                        <li><a data-target="#pic-2" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                        <li><a data-target="#pic-3" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                        <li><a data-target="#pic-4" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                        <li><a data-target="#pic-5" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                    </ul>
                </div>

                <hr class="featurette-divider" width="100%" style="padding: 2%; margin: 0; border: none">

                <div>
                    <div class="navbar-left">
                        <p class="negritasInfoThumnails"><asset:image src="facebook.ico" style="height: 5%; width: 5%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales">  /TaqueriaMx</span></p>
                        <p class="negritasInfoThumnails"><asset:image src="instagram.png" style="height: 5%; width: 7%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales">  @lataqueria</span></p>
                        <p class="negritasInfoThumnails"><asset:image src="e.mail.png" style="height: 5%; width: 5%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales" >  http://www.lataqueria.com</span></p>
                    </div>
                    <div class="login-help navbar-right" style="margin-right: 5%">
                        <div class="rating">
                            <div class="stars">
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star-empty"></span>
                            </div>

                            <span class="review-no"><p style="font: large 'Segoe UI'">135 votos</p></span><button class="like btn btn-default" type="button"><span class="glyphicon glyphicon-heart lg"><p style="font: large 'Segoe UI'">VOTAR</p></span></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        //Modal Studios
        <div class="modal fade" id="login-modalStudios" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="loginmodal-container">
                <div class = "modal-header" style="padding: 0">
                    <button type = "button" class = "close" data-dismiss = "modal" aria-hidden = "true" style="min-width: 5%; margin-right: 1%; padding: 0">
                        ×
                    </button>
                </div>
                <div class="img-responsive">
                    <asset:image style="width: 50%;height: 50%" src="studios.jpeg"/>
                </div>

                <h1 style="font: xx-large 'Segoe UI Black">Studios 8</h1><br>
                <form >
                    <p class="negritasInfoThumnails">Dirección: <span class="text-muted infoThumnail">Hidalso #35</span></p>
                    <p class="negritasInfoThumnails">Teléfono: <span class="text-muted infoThumnail">45-762-42</span></p>
                    <p class="negritasInfoThumnails">Horario de Atención: <span class="text-muted infoThumnail">10:00a.m. - 7:00p.m.</span></p>
                    <p class="negritasInfoThumnails">Descripción: <span class="text-muted infoThumnail">Diseños para publicidad. Cotizaciones sin costo. Contactános.</span></p>
                </form>
                <hr class="featurette-divider" width="100%" style="padding: 3%; margin: 0; border: none">
                <div>
                    <ul class="preview-thumbnail nav nav-tabs">
                        <li class="active"><a data-target="#pic-1" data-toggle="tab"><asset:image src="zfida1.PNG"/></a></li>
                        <li><a data-target="#pic-2" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                        <li><a data-target="#pic-3" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                        <li><a data-target="#pic-4" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                        <li><a data-target="#pic-5" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                    </ul>
                </div>

                <hr class="featurette-divider" width="100%" style="padding: 2%; margin: 0; border: none">

                <div>
                    <div class="navbar-left">
                        <p class="negritasInfoThumnails"><asset:image src="facebook.ico" style="height: 5%; width: 5%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales">  /Studios8</span></p>
                        <p class="negritasInfoThumnails"><asset:image src="instagram.png" style="height: 5%; width: 7%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales">  @_Studios8Mx</span></p>
                        <p class="negritasInfoThumnails"><asset:image src="e.mail.png" style="height: 5%; width: 5%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales" >  http://www.studios8.com</span></p>
                    </div>
                    <div class="login-help navbar-right" style="margin-right: 5%">
                        <div class="rating">
                            <div class="stars">
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star-empty"></span>
                            </div>

                            <span class="review-no"><p style="font: large 'Segoe UI'">205 votos</p></span><button class="like btn btn-default" type="button"><span class="glyphicon glyphicon-heart lg"><p style="font: large 'Segoe UI'">VOTAR</p></span></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        //Modal Ingrid
        <div class="modal fade" id="login-modalIngrid" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="loginmodal-container">
                <div class = "modal-header" style="padding: 0">
                    <button type = "button" class = "close" data-dismiss = "modal" aria-hidden = "true" style="min-width: 5%; margin-right: 1%; padding: 0">
                        ×
                    </button>
                </div>
                <div class="img-responsive">
                    <asset:image style="width: 50%;height: 50%" src="ingrid.jpg"/>
                </div>

                <h1 style="font: xx-large 'Segoe UI Black">INGRID</h1><br>
                <form >
                    <p class="negritasInfoThumnails">Dirección: <span class="text-muted infoThumnail">Liverpool #432</span></p>
                    <p class="negritasInfoThumnails">Teléfono: <span class="text-muted infoThumnail">45-899-21</span></p>
                    <p class="negritasInfoThumnails">Horario de Atención: <span class="text-muted infoThumnail">Lun - Dom de 8:00a.m. - 5:00p.m.</span></p>
                    <p class="negritasInfoThumnails">Descripción: <span class="text-muted infoThumnail">Vestidos de Alta Costura. Previa Cita. Cotizaciones sin costo.</span></p>
                </form>
                <hr class="featurette-divider" width="100%" style="padding: 3%; margin: 0; border: none">
                <div>
                    <ul class="preview-thumbnail nav nav-tabs">
                        <li class="active"><a data-target="#pic-1" data-toggle="tab"><asset:image src="zfida1.PNG"/></a></li>
                        <li><a data-target="#pic-2" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                        <li><a data-target="#pic-3" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                        <li><a data-target="#pic-4" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                        <li><a data-target="#pic-5" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                    </ul>
                </div>

                <hr class="featurette-divider" width="100%" style="padding: 2%; margin: 0; border: none">

                <div>
                    <div class="navbar-left">
                        <p class="negritasInfoThumnails"><asset:image src="facebook.ico" style="height: 5%; width: 5%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales">  /IngridCoutureMx</span></p>
                        <p class="negritasInfoThumnails"><asset:image src="instagram.png" style="height: 5%; width: 7%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales">  @_HightCoutureIngrid</span></p>
                        <p class="negritasInfoThumnails"><asset:image src="e.mail.png" style="height: 5%; width: 5%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales" >  http://www.ingrid.com</span></p>
                    </div>
                    <div class="login-help navbar-right" style="margin-right: 5%">
                        <div class="rating">
                            <div class="stars">
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                            </div>

                            <span class="review-no"><p style="font: large 'Segoe UI'">589 votos</p></span><button class="like btn btn-default" type="button"><span class="glyphicon glyphicon-heart lg"><p style="font: large 'Segoe UI'">VOTAR</p></span></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        //Modal ES
        <div class="modal fade" id="login-modalEs" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="loginmodal-container">
                <div class = "modal-header" style="padding: 0">
                    <button type = "button" class = "close" data-dismiss = "modal" aria-hidden = "true" style="min-width: 5%; margin-right: 1%; padding: 0">
                        ×
                    </button>
                </div>
                <div class="img-responsive">
                    <asset:image style="width: 50%;height: 50%" src="es.jpg"/>
                </div>

                <h1 style="font: xx-large 'Segoe UI Black">-ES-</h1><br>
                <form >
                    <p class="negritasInfoThumnails">Dirección: <span class="text-muted infoThumnail">Mina #835</span></p>
                    <p class="negritasInfoThumnails">Teléfono: <span class="text-muted infoThumnail">45-754-66</span></p>
                    <p class="negritasInfoThumnails">Horario de Atención: <span class="text-muted infoThumnail">Lun - Sab de 10:00a.m. - 6:00p.m.</span></p>
                    <p class="negritasInfoThumnails">Descripción: <span class="text-muted infoThumnail">Arquitectura Biomotica-Bioclimática</span></p>
                </form>
                <hr class="featurette-divider" width="100%" style="padding: 3%; margin: 0; border: none">
                <div>
                    <ul class="preview-thumbnail nav nav-tabs">
                        <li class="active"><a data-target="#pic-1" data-toggle="tab"><asset:image src="zfida1.PNG"/></a></li>
                        <li><a data-target="#pic-2" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                        <li><a data-target="#pic-3" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                        <li><a data-target="#pic-4" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                        <li><a data-target="#pic-5" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                    </ul>
                </div>

                <hr class="featurette-divider" width="100%" style="padding: 2%; margin: 0; border: none">

                <div>
                    <div class="navbar-left">
                        <p class="negritasInfoThumnails"><asset:image src="facebook.ico" style="height: 5%; width: 5%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales">  /ArqES</span></p>
                        <p class="negritasInfoThumnails"><asset:image src="instagram.png" style="height: 5%; width: 7%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales">  @_ES-Arquitectura</span></p>
                        <p class="negritasInfoThumnails"><asset:image src="e.mail.png" style="height: 5%; width: 5%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales" >  http://www.es.com</span></p>
                    </div>
                    <div class="login-help navbar-right" style="margin-right: 5%">
                        <div class="rating">
                            <div class="stars">
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star-empty"></span>
                            </div>

                            <span class="review-no"><p style="font: large 'Segoe UI'">287 votos</p></span><button class="like btn btn-default" type="button"><span class="glyphicon glyphicon-heart lg"><p style="font: large 'Segoe UI'">VOTAR</p></span></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        //Modal MRT
        <div class="modal fade" id="login-modalMrt" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="loginmodal-container">
                <div class = "modal-header" style="padding: 0">
                    <button type = "button" class = "close" data-dismiss = "modal" aria-hidden = "true" style="min-width: 5%; margin-right: 1%; padding: 0">
                        ×
                    </button>
                </div>
                <div class="img-responsive">
                    <asset:image style="width: 50%;height: 50%" src="mrt.jpeg"/>
                </div>

                <h1 style="font: xx-large 'Segoe UI Black">MRT</h1><br>
                <form >
                    <p class="negritasInfoThumnails">Dirección: <span class="text-muted infoThumnail">Pipila #2153</span></p>
                    <p class="negritasInfoThumnails">Teléfono: <span class="text-muted infoThumnail">(044) 445-112-5485</span></p>
                    <p class="negritasInfoThumnails">Horario de Atención: <span class="text-muted infoThumnail">Lun - Dom de 8:00a.m. - 6:00p.m.</span></p>
                    <p class="negritasInfoThumnails">Descripción: <span class="text-muted infoThumnail">Ropa para Mayoristas. Linea para Damas y Caballeros. </span></p>
                </form>
                <hr class="featurette-divider" width="100%" style="padding: 3%; margin: 0; border: none">
                <div>
                    <ul class="preview-thumbnail nav nav-tabs">
                        <li class="active"><a data-target="#pic-1" data-toggle="tab"><asset:image src="zfida1.PNG"/></a></li>
                        <li><a data-target="#pic-2" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                        <li><a data-target="#pic-3" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                        <li><a data-target="#pic-4" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                        <li><a data-target="#pic-5" data-toggle="tab"><asset:image src="zfida1.PNG" /></a></li>
                    </ul>
                </div>

                <hr class="featurette-divider" width="100%" style="padding: 2%; margin: 0; border: none">

                <div>
                    <div class="navbar-left">
                        <p class="negritasInfoThumnails"><asset:image src="facebook.ico" style="height: 5%; width: 5%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales">  /MRT-Mx</span></p>
                        <p class="negritasInfoThumnails"><asset:image src="instagram.png" style="height: 5%; width: 7%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales">  @_MrtClothes</span></p>
                        <p class="negritasInfoThumnails"><asset:image src="e.mail.png" style="height: 5%; width: 5%; background-color: transparent;"/><span class="text-muted infoThumnail redesSociales" >  http://www.mrt.com</span></p>
                    </div>
                    <div class="login-help navbar-right" style="margin-right: 5%">
                        <div class="rating">
                            <div class="stars">
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                            </div>

                            <span class="review-no"><p style="font: large 'Segoe UI'">589 votos</p></span><button class="like btn btn-default" type="button"><span class="glyphicon glyphicon-heart lg"><p style="font: large 'Segoe UI'">VOTAR</p></span></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </body>
</html>