# Using Puppet, set up your client SSH configuration file so that you can connect to a server without 
file { '~/.ssh/config':
  ensure  => present,
  replace => 'yes',
  path    => '~/.ssh/config'
  content => 'Host *
     HostName 34.139.184.21
     User root
     IdentityFile ~/.ssh/holberton',
  mode    => '0700';
}
