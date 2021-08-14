# Using Puppet, set up your client SSH configuration file so that you can connect to a server without 
file_line { 'TurnOffPasswordAuthy':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '    PasswordAuthentication no',
}

file_line { 'DeclareIdentityFile':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => '    IdentityFile ~/.ssh/holberton',
}
