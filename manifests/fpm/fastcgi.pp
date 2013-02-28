class php::fpm::fastcgi {
  require nginx::config

  file { "${nginx::config::configdir}/fastcgi_params":
    source => 'puppet:///modules/php/nginx_fastcgi_params',
    require => File[$nginx::config::configdir],
    notify  => Service['dev.nginx'],
  }
}