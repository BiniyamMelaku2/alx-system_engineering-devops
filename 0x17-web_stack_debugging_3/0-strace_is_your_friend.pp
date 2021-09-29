# find out why Apache is returning a 500 error. fix it and then automate it using Puppet
file { '/var/www/html/wp-settings.php':
  ensure  => present
}
-> exec { 'replace':
  command => "sed -i 's/.phpp/.php/' /var/www/html/wp-settings.php",
  path    =>  '/bin'
}
