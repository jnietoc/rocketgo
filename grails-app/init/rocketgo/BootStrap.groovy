/**
 * Created by Nailea Rubí Aguilera Calderón Junio 2017
 */
package rocketgo

import com.rocket.go.rocket.card.Tarjeta
import com.rocket.go.rocket.card.TipoTransaccion
import com.rocket.go.seguridad.*

class BootStrap {

    def init = { servletContext ->
		/*User admin = new User(username:'Administrador', password:'secret', enabled:true, nombre: 'Administrador', apellidoPaterno: 'admin', apellidoMaterno: 'admin', calle: 'xxx', colonia: 'xxx', codigoPostal: 'xxxxx', ciudad: 'xxx', email: 'admin@admin.com', celular: '1111111111', tipo: 'Admin').save()
        User mokara = new User(username:'Mokara', password:'secret', enabled:true, nombre: 'Mokara', apellidoPaterno: 'admin', apellidoMaterno: 'admin', calle: 'xxx', colonia: 'xxx', codigoPostal: 'xxxxx', ciudad: 'xxx', email: 'mokara@negocio.com', celular: '1111111111', tipo: 'Negocio').save()
        Tarjeta tarjeta = new Tarjeta(noTarjeta: '1234567890123456', negocio: mokara?.id).save()
        User  nai = new User(username:'Nailea', password:'secret', enabled:true, nombre: 'Nailea', apellidoPaterno: 'admin', apellidoMaterno: 'admin', calle: 'xxx', colonia: 'xxx', codigoPostal: 'xxxxx', ciudad: 'xxx', email: 'nailea@cliente.com', celular: '1111111111', tipo: 'Cliente', tarjeta: tarjeta).save()
        User iberico = new User(username:'Iberico', password:'secret', enabled:true, nombre: 'Iberico', apellidoPaterno: 'admin', apellidoMaterno: 'admin', calle: 'xxx', colonia: 'xxx', codigoPostal: 'xxxxx', ciudad: 'xxx', email: 'iberico@negocio.com', celular: '1111111111', tipo: 'Negocio Plus').save()

        Role adminRole = new Role(authority: 'ROLE_ADMIN').save()
        Role negocioRole = new Role(authority: 'ROLE_NEGOCIO').save()
        Role negocioPlusRole = new Role(authority: 'ROLE_NEGOCIO_PLUS').save()
        Role clienteRole = new Role(authority: 'ROLE_CLIENTE').save()

        UserRole.create(admin, adminRole)
        UserRole.create(mokara, negocioRole)
        UserRole.create(iberico, negocioPlusRole)
        UserRole.create(nai, clienteRole)*/

        /*TipoTransaccion transaccionVenta = new TipoTransaccion(tipo: 'Venta').save()
        TipoTransaccion transaccionRetiro = new TipoTransaccion(tipo: 'Retiro').save()*/
    }
    def destroy = {
    }
}
