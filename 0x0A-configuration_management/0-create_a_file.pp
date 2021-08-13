# Using Puppet, create a file in /tmp.
file { '/tmp/holberton': #the path of the new file
  ensure  => 'present',
  path    => '/tmp/holberton',
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0744',
  content => 'I love Puppet';
}
