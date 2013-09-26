class plex {

  case $::osfamily {
    'Debian','Ubuntu': {
      class { 'plex::package::debian': }
    }
  }

  package { 'plexmediaserver':
    ensure => present,
  } ->
  service { 'plexmediaserver':
    ensure    => running,
    enable    => true,
    hasstatus => false,
    status    => '/bin/pidof "Plex Media Server"',
  }

}
