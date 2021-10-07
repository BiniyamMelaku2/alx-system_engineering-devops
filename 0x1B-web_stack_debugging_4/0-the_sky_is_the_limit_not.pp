# using ApacheBench simulate HTTP requests to a web server to get failed requests and fix our stack
exec { 'webstack-debug':
  environment => ['DIR=/etc/default/nginx',
                  'OLD=ULIMIT="-n 20"',
                  'NEW=ULIMIT="-n 2000"'],
  command     => 'sudo sed -i "s/$OLD/$NEW/" $DIR; sudo service nginx restart',
  path        => ['/usr/bin', '/bin'],
  returns     => [0, 1]
}
