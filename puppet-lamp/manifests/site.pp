class { 'apache':
	default_mods        => false,
	default_confd_files => false,
}
apache::vhost { 'unfriendedapp.dev':
      port    => '80',
      docroot => '/var/www/',
}
class { '::mysql::server': }
mysql::db { 'symfony2':
  user     => 'kieran',
  password => 'password',
  host     => 'localhost',
  sql      => '/vagrant_data/symfony2/mysql-dump.sql',
}