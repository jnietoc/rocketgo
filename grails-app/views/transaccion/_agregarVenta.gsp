<div id="dialog-form" title="Agregar Compra">
    <fieldset>
        <dl class="dl-horizontal">
            <dt>
                <label for="noTarjeta">
                    <g:message code="user.username.label" default="No. Tarjeta:"/>
                </label>
            </dt>
            <dd>
                <input type="text" name="noTarjeta" id="noTarjeta" class="text ui-widget-content ui-corner-all">
                <button type="button" class="ui-button ui-corner-all ui-widget" onclick="buscarCliente();">Buscar</button>
            </dd>
        </dl>
    </fieldset>
    <fieldset>
        <div id="clienteInfo">

        </div>
    </fieldset>
    <fieldset>
        <dl class="dl-horizontal">
            <dt>
                <label for="noTarjeta">
                    <g:message code="user.username.label" default="Monto:"/>
                </label>
            </dt>
            <dd>
                <input type="number" name="monto" id="monto" class="text ui-widget-content ui-corner-all">
            </dd>
        </dl>
    </fieldset>
</div>