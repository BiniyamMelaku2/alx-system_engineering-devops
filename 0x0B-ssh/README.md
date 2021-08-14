# 0x0B. SSH
 Foundations > System engineering & DevOps > Security

## Resources
Read or watch:

* [What is a (physical) server - text]()
* [What is a (physical) server - video]()
* [SSH essentials]()
* [SSH Config File]()
* [Public Key Authentication for SSH]()
* [How Secure Shell Works]()
* [SSH Crash Course]()

For reference:

* [Understanding the SSH Encryption and Connection Process]()
* [Secure Shell Wiki]()
* [IETF RFC 4251 (Description of the SSH Protocol)]()
* [Internet Engineering Task Force]()
* [Request for Comments]()

## Tasks

## [0. Use a private key](./0-use_a_private_key)
 Write a Bash script that uses ssh to connect to your server using the private key ~/.ssh/holberton with the user ubuntu.

Requirements:

* Only use ssh single-character flags
* You cannot use -l
* You do not need to handle the case of a private key protected by a passphrase
> ./0-use_a_private_key

## [1. Create an SSH key pair](./1-create_ssh_key_pair)
  Write a Bash script that creates an RSA key pair.

Requirements:

* Name of the created private key must be holberton
* Number of bits in the created key to be created 4096
* The created key must be protected by the passphrase betty
> ./1-create_ssh_key_pair

## [2. Client configuration file](./)
  Your Ubuntu Vagrant machine has an SSH configuration file for the local SSH client, let’s configure it to our needs so that you can connect to a server without typing a password. Share your SSH client configuration in your answer file.

Requirements:

* Your SSH client configuration must be configured to use the private key ~/.ssh/holberton
* Your SSH client configuration must be configured to refuse to authenticate using a password
> ssh -v ubuntu@98.98.98.98

> 
