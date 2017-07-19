import com.rocket.go.seguridad.CustomUserDetailsService
import com.rocket.go.seguridad.UserPasswordEncoderListener
// Place your Spring DSL code here
beans = {
    userPasswordEncoderListener(UserPasswordEncoderListener, ref('hibernateDatastore'))
    userDetailsService(CustomUserDetailsService){
        grailsApplication = ref('grailsApplication')
    }
}
