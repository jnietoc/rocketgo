<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="rocket.go.appName" args="[entityName]" /></title>
    </head>
    <body>
        <div id="create-user" class="content scaffold-create" role="main">
            <h1><g:message code="rocket.go.registro.cliente" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.user}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.user}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form method="POST" controller="user" action="save">
                <div class="input-group-lg" style=" margin-left: 30%;margin-top: 3%">
                    <dl class="dl-horizontal">
                        <div class="text-field ${hasErrors(bean: user, field: 'username', 'error')} required">
                            <dt>
                                <label for="username" class="etiquetasProducto">
                                    <span class="required-indicator">*</span>
                                    <g:message code="user.username.label" default="Tu Usuario:"/>
                                </label>
                            </dt>
                            <dd>
                                <f:input bean="user" property="username"/>
                            </dd>
                        </div>
                    </dl>

                    <dl class="dl-horizontal">
                        <div class="text-field ${hasErrors(bean: user, field: 'password', 'error')} required">
                            <dt>
                                <label for="password" class="etiquetasProducto">
                                    <span class="required-indicator">*</span>
                                    <g:message code="user.password.label" default="Contraseña:"/>
                                </label>
                            </dt>
                            <dd>
                                <f:input bean="user" property="password"/>
                            </dd>
                        </div>
                    </dl>

                    <dl class="dl-horizontal">
                        <div class="text-field ${hasErrors(bean: user, field: 'nombre', 'error')} required">
                            <dt>
                                <label for="nombre" class="etiquetasProducto">
                                    <span class="required-indicator">*</span>
                                    <g:message code="user.nombre.label" default="Nombre:"/>
                                </label>
                            </dt>
                            <dd>
                                <f:input bean="user" property="nombre"/>
                            </dd>
                        </div>
                    </dl>

                    <dl class="dl-horizontal">
                        <div class="text-field ${hasErrors(bean: user, field: 'apellidoPaterno', 'error')} required">
                            <dt>
                                <label for="apellidoPaterno" class="etiquetasProducto">
                                    <span class="required-indicator">*</span>
                                    <g:message code="user.nombre.label" default="Apellido Paterno:"/>
                                </label>
                            </dt>
                            <dd>
                                <f:input bean="user" property="apellidoPaterno"/>
                            </dd>
                        </div>
                    </dl>

                    <dl class="dl-horizontal">
                        <div class="text-field ${hasErrors(bean: user, field: 'apellidoMaterno', 'error')} required">
                            <dt>
                                <label for="apellidoMaterno" class="etiquetasProducto">
                                    <span class="required-indicator">*</span>
                                    <g:message code="user.nombre.label" default="Apellido Materno:"/>
                                </label>
                            </dt>
                            <dd>
                                <f:input bean="user" property="apellidoMaterno"/>
                            </dd>
                        </div>
                    </dl>

                    <dl class="dl-horizontal">
                        <div class="text-field ${hasErrors(bean: user, field: 'email', 'error')} required">
                            <dt>
                                <label for="email" class="etiquetasProducto">
                                    <span class="required-indicator">*</span>
                                    <g:message code="user.email.label" default="Email:"/>
                                </label>
                            </dt>
                            <dd>
                                <f:input bean="user" property="email"/>
                            </dd>
                        </div>
                    </dl>

                    <dl class="dl-horizontal">
                        <div class="text-field ${hasErrors(bean: user, field: 'celular', 'error')} required">
                            <dt>
                                <label for="celular" class="etiquetasProducto">
                                    <span class="required-indicator">*</span>
                                    <g:message code="user.celular.label" default="Telefono Celular:"/>
                                </label>
                            </dt>
                            <dd>
                                <f:input bean="user" property="celular"/>
                            </dd>
                        </div>
                    </dl>

                    <dl class="dl-horizontal">
                        <div class="text-field ${hasErrors(bean: user, field: 'calle', 'error')} required">
                            <dt>
                                <label for="calle" class="etiquetasProducto">
                                    <span class="required-indicator">*</span>
                                    <g:message code="user.calle.label" default="Calle:"/>
                                </label>
                            </dt>
                            <dd>
                                <f:input bean="user" property="calle"/>
                            </dd>
                        </div>
                    </dl>

                    <dl class="dl-horizontal">
                        <div class="text-field ${hasErrors(bean: user, field: 'colonia', 'error')} required">
                            <dt>
                                <label for="colonia" class="etiquetasProducto">
                                    <span class="required-indicator">*</span>
                                    <g:message code="user.colonia.label" default="Colonia:"/>
                                </label>
                            </dt>
                            <dd>
                                <f:input bean="user" property="colonia"/>
                            </dd>
                        </div>
                    </dl>

                    <dl class="dl-horizontal">
                        <div class="text-field ${hasErrors(bean: user, field: 'codigoPostal', 'error')} required">
                            <dt>
                                <label for="codigoPostal" class="etiquetasProducto">
                                    <span class="required-indicator">*</span>
                                    <g:message code="user.codigoPostal.label" default="Codigo Postal:"/>
                                </label>
                            </dt>
                            <dd>
                                <f:input bean="user" property="codigoPostal"/>
                            </dd>
                        </div>
                    </dl>

                    <dl class="dl-horizontal">
                        <div class="text-field ${hasErrors(bean: user, field: 'ciudad', 'error')} required">
                            <dt>
                                <label for="ciudad" class="etiquetasProducto">
                                    <span class="required-indicator">*</span>
                                    <g:message code="user.ciudad.label" default="Ciudad:"/>
                                </label>
                            </dt>
                            <dd>
                                <f:input bean="user" property="ciudad"/>
                            </dd>
                        </div>
                    </dl>

                    <dl class="dl-horizontal" style="display: none;">
                        <div class="text-field">
                            <dt>
                                <label>
                                    <g:message code="user.tipo.label" default="No. Tarjeta:"/>
                                </label>
                            </dt>
                            <dd>
                                <input type="text" name="noTarjeta" id="noTarjeta"/>
                            </dd>
                        </div>
                    </dl>

                    <dl class="dl-horizontal" style="display: none;">
                        <div class="text-field ${hasErrors(bean: user, field: 'tipo', 'error')} required">
                            <dt>
                                <label for="tipo" class="etiquetasProducto">
                                    <g:message code="user.tipo.label" default="Tipo:"/>
                                </label>
                            </dt>
                            <dd>
                                <f:field bean="user" property="tipo" value="Cliente" default="Cliente"/>
                            </dd>
                        </div>
                    </dl>

                    <div>
                        <g:submitButton name="create" class="btn btn-lg btn-danger" value="${message(code: 'default.button.create.label', default: 'Guardar')}" />
                    </div>
                </div>
            </g:form>
        </div>
    </body>
</html>
