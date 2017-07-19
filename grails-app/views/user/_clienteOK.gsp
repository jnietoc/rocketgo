<g:if test="${cliente}">
    <pre>${cliente.nombre + ' ' + cliente.apellidoPaterno + ' ' + cliente.apellidoMaterno}</pre>
    <input type="hidden" name="clienteId" id="clienteId" value="${cliente?.id}" />
</g:if>
<g:else>
    <pre>No existe el cliente</pre>
</g:else>