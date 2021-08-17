# 0x0C. Web server
 By Sylvain Kalache, co-founder at Holberton School
 
## Concepts

* [DNS]()
* [Web Server]()
* [CI/CD]()
* [Docker]()
* [Web stack debugging]()
* [What is a Child Process?]()
* [DevOps]()
* [System Administration]()
* [Site Reliability Engineering]()

This exercise is aiming at training you on automating your work. If you can automate tasks that you do manually, you can then automate yourself out of repetitive tasks and focus your energy on something more interesting. For an [SRE](https://www.atlassian.com/incident-management/devops/sre), that comes very handy when there are hundreds or thousands of servers to manage, the work cannot be only done manually. Note that the checker will execute your script as the root user, you do not need to use the sudo command. 

## Resources
Read or watch:

* [How the web works]()
* [Nginx]()
* [How to Configure Nginx]()
* [Child process concept page]()
* [Root and sub domain]()
* [HTTP requests]()
* [HTTP redirection]()
* [Not found HTTP response code]()
* [Logs files on Linux]()
For reference:

* [RFC 7231 (HTTP/1.1)]()
* [RFC 7540 (HTTP/2)]()

## Tasks

## [0. Transfer a file to your server](./0-transfer_file)
  Write a Bash script that transfers a file from our client to a server:

Requirements:

* Accepts 4 parameters
1. The path to the file to be transferred
2. The IP of the server we want to transfer the file to
3. The username scp connects with
4. The path to the SSH private key that scp uses
* Display Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY if less than 3 parameters passed
* scp must transfer the file to the user home directory ~/
* Strict host key checking must be disabled when using scp
```
$ ./0-transfer_file
Usage: 0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY
$ ssh ubuntu@8.8.8.8 -i /vagrant/root 'ls ~/'
afile
$ touch some_page.html
$ ./0-transfer_file some_page.html 8.8.8.8 sylvain /vagrant/private_key
some_page.html                     100%   12     0.1KB/s   00:00
$ ssh ubuntu@8.8.8.8 -i /vagrant/private_key 'ls ~/'
afile
some_page.html
```
In this example, I:

* remotely execute the ls ~/ command via ssh to see what ~/ contains
* create a file named some_page.html
* execute my 0-transfer_file script
* remotely execute the ls ~/ command via ssh to see that the file some_page.html has been successfully transferred

That is one way of publishing your website pages to your server.

