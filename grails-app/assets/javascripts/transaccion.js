/**
 * Created by FAM NIETO on 21/06/2017.
 */

function loadAgregarVenta() {
    $('#dialogs').hide();
    $.post( "/transaccion/cargarAgregarVenta",
        {
        }).done(function(data) {
        $("#dialogs").html(data);
    });


    setTimeout(function(){
        var dialog = $( "#dialog-form" ).dialog({
            autoOpen: false,
            height: 400,
            width: 500,
            modal: true,
            buttons: {
                "Agregar": function() {
                    agregarVenta();
                    dialog.dialog('close');
                },
                Cancel: function() {
                    dialog.dialog('close');
                    $('#dialogs').hide();
                }
            },
            close: function() {
                dialog.dialog('close');
                dialog.dialog('destroy').remove();
                $('#dialogs').hide();
            }
        });

        dialog.dialog('open');
        $('#dialogs').show();
    }, 500);
}

function buscarCliente() {
    $.post( "/user/buscarClientePorTarjeta",
        {
            "noTarjeta": $('#noTarjeta').val()
        }).done(function(data) {
        $("#clienteInfo").html(data);
    });
}

function agregarVenta() {
    $.post( "/transaccion/guardarTransaccion",
        {
            "tipoTransaccion": 1,
            "clienteId": $('#clienteId').val(),
            "monto": $('#monto').val()
        }).done(function(data) {
            alert(data);
    });
}
