/**
 * Created by Nailea Rubí Aguilera Calderón on 06/06/2017.
 */

function showMenu(menu) {
    $('.list-group').find('div').each(function (index, object) {
        if($(object).attr('id') === menu)
            $(object).fadeToggle('slow', 'swing');
        else if($(object).is(':visible'))
            $(object).fadeToggle('slow', 'swing');
    });
}
