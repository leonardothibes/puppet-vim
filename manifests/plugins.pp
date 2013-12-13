class vim::plugins 
{
	define install() {
		package {"vim-${name}":
			ensure  => present,
			require => Package[$vim::params::vim],
		}
		exec {"vim-addons install ${name}":
			path    => "/usr/bin",
			require => Package["vim-${name}"],
		}
	}
}
