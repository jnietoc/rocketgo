/*environments {
	development {
		dataSource {
			dbCreate = "create-drop"
			driverClassName = "org.postgresql.Driver"
			dialect = org.hibernate.dialect.PostgreSQLDialect
			//uri = new URI(System.env.DATABASE_URL?:"postgres://test:test@localhost/test")
			url = "jdbc:postgresql://localhost:5432/rocketgo"
			username = "postgres"
			password = "puertaabierta"
		}
	}
	production {
		dataSource {
			dbCreate = "update"
			driverClassName = "org.postgresql.Driver"
			dialect = org.hibernate.dialect.PostgreSQLDialect
			uri = new URI(System.env.DATABASE_URL?:"postgres://test:test@localhost/test")
			url = "jdbc:postgresql://" + uri.host + ":" + uri.port + uri.path
			username = uri.userInfo.split(":")[0]
			password = uri.userInfo.split(":")[1]
		}
	}
}*/
// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'com.rocket.go.seguridad.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'com.rocket.go.seguridad.UserRole'
grails.plugin.springsecurity.authority.className = 'com.rocket.go.seguridad.Role'
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	[pattern: '/',               access: ['permitAll']],
	[pattern: '/error',          access: ['permitAll']],
	[pattern: '/index',          access: ['permitAll']],
	[pattern: '/index.gsp',      access: ['permitAll']],
	[pattern: '/shutdown',       access: ['permitAll']],
	[pattern: '/assets/**',      access: ['permitAll']],
	[pattern: '/**/js/**',       access: ['permitAll']],
	[pattern: '/**/css/**',      access: ['permitAll']],
	[pattern: '/**/images/**',   access: ['permitAll']],
	[pattern: '/**/images/fonts/**',   access: ['permitAll']],
	[pattern: '/**/favicon.ico', access: ['permitAll']],
	[pattern: '/admin/dbconsole/**', access: ['IS_AUTHENTICATED_ANONYMOUSLY']],
	[pattern: '/dbconsole/**', access: ['IS_AUTHENTICATED_ANONYMOUSLY']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
	[pattern: '/assets/**',      filters: 'none'],
	[pattern: '/**/js/**',       filters: 'none'],
	[pattern: '/**/css/**',      filters: 'none'],
	[pattern: '/**/images/**',   filters: 'none'],
	[pattern: '/**/favicon.ico', filters: 'none'],
	[pattern: '/**',             filters: 'JOINED_FILTERS']
]

