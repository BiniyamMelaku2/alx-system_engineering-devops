# Installs and configures an Nginx server using Puppet instead of Bash
exec { '/usr/bin/env sudo apt-get -y update': }
exec { '/usr/bin/env sudo apt-get -y install nginx': }
exec { '/usr/bin/env sudo echo "Holberton School" > /var/www/html/index.nginx-debian.html': }
exec { '/usr/bin/env sudo sed -i "/server_name _;/ a\\\trewrite ^/redirect_me http://www.youtube.com permanent;" /etc/nginx/sites-available/default': }
exec { '/usr/bin/env sudo sed -i "/server_name _;/ a\\\terror_page 404 /custom_404.html;" /etc/nginx/sites-available/default': }
exec { '/usr/bin/env sudo /etc/init.d/nginx restart': }
