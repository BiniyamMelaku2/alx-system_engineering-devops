# 0x0C. Web server

 
## Concepts

DNS

* [Learn everything about DNS in cartoon](https://howdns.works/)
* [A](https://support.dnsimple.com/articles/a-record/)
* [CNAME](https://en.wikipedia.org/wiki/CNAME_record)
* [MX](https://en.wikipedia.org/wiki/MX_record)
* [TXT](https://en.wikipedia.org/wiki/TXT_record)
* [Use DNS to scale with round-robin DNS](https://www.dnsknowledge.com/whatis/round-robin-dns/)
* [What’s an NS Record?](https://support.dnsimple.com/categories/account/)
* [What’s an SOA Record?](https://support.dnsimple.com/articles/soa-record/)
* [What’s the point in having www in a url?](https://serverfault.com/questions/145777/what-s-the-point-in-having-www-in-a-url)

Web Server:-

* [Wikipedia page about web server](https://en.wikipedia.org/wiki/Web_server)
* [Web server](http://whatis.techtarget.com/definition/Web-server)
* [What is a Web Server?](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/What_is_a_web_server)

CI/CD:-

* [CI/CD](https://digital.ai/catalyst-blog/walk-before-you-run-understanding-ci-in-cd)
* [Twelve Principles of Agile Software)](http://agilemanifesto.org/principles.html)
* [First 5 Commands When I Connect on a Linux Server](https://www.linux.com/training-tutorials/first-5-commands-when-i-connect-linux-server/)
* [First 5 Commands When I Connect on a Linux Server-Youtube](https://www.youtube.com/watch?v=1_gqlbADaAw)
* [uptime and downtime](https://whatis.techtarget.com/definition/uptime-and-downtime)
* [Understanding Linux CPU Load - when should you be worried?](https://scoutapm.com/blog/understanding-load-averages)
* [Linux Load Averages: Solving the Mystery](https://www.brendangregg.com/blog/2017-08-08/linux-load-averages.html)
* [What is a Child Process?Documentation](https://www.gnu.org/software/libc/manual/html_node/Processes.html#Processes)

DevOps:-

* [Agile methodology](https://en.wikipedia.org/wiki/Agile_software_development)
* [Periodic Table of DevOps Tools](https://digital.ai/periodic-table-of-devops-tools)
* [What is DevOps?](https://theagileadmin.com/what-is-devops/)
* [Understanding Agile Methodology](https://digital.ai/resources/library)

System Administration:-

* [What is the Role of a System Administrator?](https://www.cyberciti.biz/faq/what-is-the-role-of-the-system-administrator/)
* [System Administration](https://en.wikiversity.org/wiki/System_administration)

Site Reliability Engineering:-

* [What is ‘Site Reliability Engineering’?](https://sre.google/in-conversation/)
* [Love DevOps? Wait Until you meet SRE](https://www.atlassian.com/incident-management/devops/sre)
* [Site Reliability Engineering](https://en.wikipedia.org/wiki/Site_reliability_engineering)

If I need to create a file [/tmp/test] containing the string [hello world] and modify the configuration of Nginx to listen on port 8080 instead of 80, I can use emacs on my server to create the file and to modify the Nginx configuration file [/etc/nginx/sites-enabled/default].
```
@ubuntu cat 88-script_example
#!/usr/bin/env bash
# Configuring a server with specification XYZ
echo hello world > /tmp/test
sed -i 's/80/8080/g' /etc/nginx/sites-enabled/default
in@ubuntu
```

This exercise is aiming at training on automating your work. If you can automate tasks that you do manually, you can then automate yourself out of repetitive tasks and focus your energy on something more interesting. For an [SRE](https://www.atlassian.com/incident-management/devops/sre), that comes very handy when there are hundreds or thousands of servers to manage, the work cannot be only done manually. 


## Resources
Read or watch:

* [How the web works](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works)
* [Nginx](https://en.wikipedia.org/wiki/Nginx)
* [How to Configure Nginx](https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-server-blocks-virtual-hosts-on-ubuntu-16-04)
* [Child process concept page]()
* [Root and sub domain](https://landingi.com/help/domains-vs-subdomains/)
* [HTTP requests](https://www.tutorialspoint.com/http/http_methods.htm)
* [HTTP redirection](https://moz.com/learn/seo/redirection)
* [Not found HTTP response code](https://en.wikipedia.org/wiki/HTTP_404)
* [Logs files on Linux](https://www.cyberciti.biz/faq/ubuntu-linux-gnome-system-log-viewer/)
For reference:

* [RFC 7231 (HTTP/1.1)](https://datatracker.ietf.org/doc/html/rfc7231)
* [RFC 7540 (HTTP/2)](https://datatracker.ietf.org/doc/html/rfc7540)

## Tasks

## [0. Transfer a file to your server](./0-transfer_file)
  Write a Bash script that transfers a file from our client to a server:

Requirements:

* Accepts 4 parameters
1. The path to the file to be transferred
2. The IP of the server we want to transfer the file to
3. The username scp connects with
4. The path to the SSH private key that scp uses
* Display [Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY] if less than 3 parameters passed
* [scp] must transfer the file to the user home directory ~/
* Strict host key checking must be disabled when using scp
```
$ ./0-transfer_file
Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY
$ ssh ubuntu@8.8.8.8 -i /vagrant/root 'ls ~/'
afile
$ ssh ubuntu@34.139.184.21 -i . 'ls ~/'
load pubkey ".": Is a directory
your_public_key_file
$ touch some_page.html
$ ./0-transfer_file some_page.html 8.8.8.8 root /vagrant/private_key
some_page.html                     100%   12     0.1KB/s   00:00
$ ./0-transfer_file some_page.html 34.139.184.21 ubuntu
Warning: Identity file  not accessible: No such file or directory.
some_page.html                                                                                                         100%    0     0.0KB/s   00:00    
$ ssh ubuntu@8.8.8.8 -i /vagrant/private_key 'ls ~/'
afile
some_page.html
$ ssh ubuntu@34.139.184.21 -i . 'ls ~/'
load pubkey ".": Is a directory
some_page.html
your_public_key_file
```
In this example, I:

* remotely execute the ls ~/ command via ssh to see what ~/ contains
* create a file named some_page.html
* execute my 0-transfer_file script
* remotely execute the ls ~/ command via ssh to see that the file some_page.html has been successfully transferred

That is one way of publishing your website pages to your server.

## [1. Install nginx web server](./1-install_nginx_web_server)
Readme:

[-y on apt-get command](https://askubuntu.com/questions/672892/what-does-y-mean-in-apt-get-y-install-command)
Web servers are the piece of software generating and serving HTML pages, let’s install one!

Requirements:

* Install nginx on your web-01 server
* Nginx should be listening on port 80
* When querying Nginx at its root / with a GET request (requesting a page) using curl, it must return a page that contains the string Holberton School
* write a Bash script that configures a new Ubuntu machine to respect above requirements (this script will be run on the server itself)
* You can’t use systemctl for restarting nginx

Server terminal:
```
root@sy-web-01$ ./1-install_nginx_web_server > /dev/null 2>&1
root@sy-web-01$ 
root@sy-web-01$ curl localhost
Holberton School for the win!
root@sy-web-01$ 
```
Local terminal:
```
@ubuntu$ curl 34.198.248.145/
Holberton School for the win!
@ubuntu$ curl -sI 34.198.248.145/
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Tue, 21 Feb 2017 23:43:22 GMT
Content-Type: text/html
Content-Length: 30
Last-Modified: Tue, 21 Feb 2017 07:21:32 GMT
Connection: keep-alive
ETag: "58abea7c-1e"
Accept-Ranges: bytes

@ubuntu$
```
In this example [34.198.248.145] is the IP of my [web-01] server. If you want to query the Nginx that is locally installed on your server, you can use [curl 127.0.0.1.]

If things are not going as expected, make sure to check out Nginx logs, they can be found in [/var/log/].

## [2. Setup a domain name](./2-setup_a_domain_name)
[.TECH Domains](https://get.tech/) is one of the top domain providers. They are known for the stability and quality of their DNS hosting solution. Holberton School partnered with .TECH Domains so that you can learn about DNS.

Provide the domain name in your answer file.

Requirement:

* provide the domain name only (example: foobar.tech), no subdomain (example: www.foobar.tech)
* configure your DNS records with an A entry so that your root domain points to your web-01 IP address Warning: the propagation of your records can take time (~1-2 hours)
* go to your profile and enter your domain in the Project website url field
Example:
```
@ubuntu$ cat 2-setup_a_domain_name
holbertonschool.tech
@ubuntu$
@ubuntu$ dig biniyammelaku.tech
; <<>> DiG 9.11.28-RedHat-9.11.28-1.fc32 <<>> biniyammelaku.tech
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 63268
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 1280
;; QUESTION SECTION:
;biniyammelaku.tech.		IN	A

;; ANSWER SECTION:
biniyammelaku.tech.	28800	IN	A	34.139.184.21

;; Query time: 340 msec
;; SERVER: 192.168.43.1#53(192.168.43.1)
;; WHEN: Tue Aug 17 21:29:43 EAT 2021
;; MSG SIZE  rcvd: 63


@ubuntu$
```
When your domain name is setup, please verify the Registrar here: [https://whois.whoisxmlapi.com/](https://whois.whoisxmlapi.com/) and you must see in the JSON response: "registrarName": "Dotserve Inc"

## [3. Redirection](./3-redirection)
Readme:

* [Replace a line with multiple lines with sed](https://stackoverflow.com/questions/26041088/sed-replace-line-with-multiline-variable)
Configure your Nginx server so that /redirect_me is redirecting to another page.

Requirements:

* The redirection must be a “301 Moved Permanently”
* file should be a Bash script containing commands to automatically configure a Ubuntu machine to respect above requirements
* Using what you did with 1-install_nginx_web_server, write 3-redirection so that it configures a brand new Ubuntu machine to the requirements asked in this task
```
@ubuntu$ curl -sI 34.198.248.145/redirect_me/
HTTP/1.1 301 Moved Permanently
Server: nginx/1.4.6 (Ubuntu)
Date: Tue, 21 Feb 2017 21:36:04 GMT
Content-Type: text/html
Content-Length: 193
Connection: keep-alive
Location: https://www.youtube.com/watch?v=QH2-TGUlwu4

@ubuntu$
```

## [4. Not found page 404](./4-not_found_page_404)
Configure your Nginx server to have a custom 404 page that contains the string [Ceci n'est pas une page].

Requirements:

* The page must return an HTTP 404 error code
* The page must contain the string Ceci n'est pas une page
* Using what you did with 3-redirection, write 4-not_found_page_404 so that it configures a brand new Ubuntu machine to the requirements asked in this task
```
$ curl -sI 34.198.248.145/xyz
HTTP/1.1 404 Not Found
Server: nginx/1.4.6 (Ubuntu)
Date: Tue, 21 Feb 2017 21:46:43 GMT
Content-Type: text/html
Content-Length: 26
Connection: keep-alive
ETag: "58acb50e-1a"

@ubuntu$ curl 34.198.248.145/xyzfoo
Ceci n'est pas une page

@ubuntu$
```

## [5. Install Nginx web server (w/ Puppet)](./7-puppet_install_nginx_web_server.pp)
Time to practice configuring your server with Puppet! Just as you did before, we’d like you to install and configure an Nginx server using Puppet instead of Bash. To save time and effort, you should also include resources in your manifest to perform a 301 redirect when querying /redirect_me.

Requirements:

* Nginx should be listening on port 80
* When querying Nginx at its root / with a GET request (requesting a page) using curl, it must return a page that contains the string Holberton School
* The redirection must be a “301 Moved Permanently”
* file should be a Puppet manifest containing commands to automatically configure an Ubuntu machine to respect above requirements
