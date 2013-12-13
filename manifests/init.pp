class vim(
  $ensure   = $vim::params::ensure,
  $encoding = $vim::params::encoding,
  $tabstop  = $vim::params::tabstop,
  $opt_misc = $vim::params::opt_misc,
) inherits vim::params {

	include vim::dependencies
	package {"$vim": ensure => $ensure}

	if $ensure == 'present' {
		exec {"update-alternatives --set editor /usr/bin/vim.basic":
			path    => "/usr/bin:/usr/sbin:/bin",
			unless  => "test /etc/alternatives/editor -ef /usr/bin/vim.basic",
			require => Package["$vim"],
		}
		
		file {"$vimpath/vimrc.local":
			ensure  => present,
			content => template('vim/vimrc.local.erb'),
			owner   => root,
			group   => root,
			mode    => 0644,
			require => Package["$vim"],
		}
	} else {
		file {["$vimpath/vimrc.local", $vimpath]: ensure => 'absent'}
	}

	#package {[ "$vim" , "$vim-puppet" ]: ensure => present}
	#exec {"vim-addons install puppet": path => "/usr/bin"}
}
