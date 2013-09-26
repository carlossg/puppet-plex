class plex::pakcage::debian {

  apt::key { 'plex':
    key        => '72740199',
    key_source => 'http://shell.ninthgate.se/packages/shell-ninthgate-se-keyring.key',
  } ->
  apt::source { 'plex':
    location    => 'http://shell.ninthgate.se/packages/debian',
    repos       => 'main',
    include_src => false,
    before      => Package['plexmediaserver'],
  }

}
