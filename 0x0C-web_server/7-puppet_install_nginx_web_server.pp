# Installs and configures an Nginx server using Puppet instead of Bash

exec { 'apt-get-update':
  command => '/usr/bin/apt-get update'
}

package { 'apache2.2-common':
  ensure  => 'absent',
  require => Exec['apt-get-update']
}

package { 'nginx':
  ensure  => 'installed',
  require => Package['apache2.2-common']
}

service { 'nginx':
  ensure  => 'running',
  require => file_line['perform a redirection'],
}

file { '/var/www/html/index.nginx-debian.html':
  ensure  => 'present',
  content => 'Holberton School for the win!'
  require => Package['nginx']
}

file_line { 'perform a redirection':
  ensure  => 'present',
  path    => '/etc/nginx/sites-enabled/default',
  line    => 'rewrite ^/redirect_me/$ https://www.youtube.com\/watch\?v=w6E7aQnA4Ws permanent;',
  after   => 'root /var/www/html;',
  require => Package['nginx'],
  notify  => Service['nginx'],
}
