# 0x0B. SSH
 Foundations > System engineering & DevOps > Security

## Resources
Read or watch:

* [What is a (physical) server - text](https://en.wikipedia.org/wiki/Server_%28computing%29#Hardware_requirement)
* [What is a (physical) server - video](https://www.youtube.com/watch?v=B1ANfsDyjeA)
* [SSH essentials](https://www.digitalocean.com/community/tutorials/ssh-essentials-working-with-ssh-servers-clients-and-keys)
* [SSH Config File](https://www.ssh.com/academy/ssh/config)
* [Public Key Authentication for SSH](https://www.ssh.com/academy/ssh/public-key-authentication)
* [How Secure Shell Works](https://www.youtube.com/watch?v=ORcvSkgdA58)
* [SSH Crash Course](https://www.youtube.com/watch?v=hQWRp-FdTpc)

For reference:

* [Understanding the SSH Encryption and Connection Process](https://www.digitalocean.com/community/tutorials/understanding-the-ssh-encryption-and-connection-process)
* [Secure Shell Wiki](https://en.wikipedia.org/wiki/Secure_Shell)
* [IETF RFC 4251 (Description of the SSH Protocol)](https://www.ietf.org/rfc/rfc4251.txt)
* [Internet Engineering Task Force](https://en.wikipedia.org/wiki/Internet_Engineering_Task_Force)
* [Request for Comments](https://en.wikipedia.org/wiki/Request_for_Comments)
* [Using the SSH Config File](https://linuxize.com/post/using-the-ssh-config-file/)

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

## [2. Client configuration file](./2-ssh_config)
  Your Ubuntu Vagrant machine has an SSH configuration file for the local SSH client, let’s configure it to our needs so that you can connect to a server without typing a password. Share your SSH client configuration in your answer file.

Requirements:

* Your SSH client configuration must be configured to use the private key ~/.ssh/holberton
* Your SSH client configuration must be configured to refuse to authenticate using a password
> ssh -v ubuntu@98.98.98.98

> 

## [3. Let me in!](./)
  Now that you have successfully connected to your server, we would also like to join the party.

Add the SSH public key to your server so that we can connect using the ubuntu user.
> cat <your_public_key_file> >> ~/.ssh/authorized_keys

## [4. Client configuration file (w/ Puppet)](./100-puppet_ssh_config.pp)
  Let’s practice using Puppet to make changes to our configuration file. Just as in the previous configuration file task, we’d like you to set up your client SSH configuration file so that you can connect to a server without typing a password.

Requirements:

* Your SSH client configuration must be configured to use the private key ~/.ssh/holberton
* Your SSH client configuration must be configured to refuse to authenticate using a password
> sudo puppet apply 100-puppet_ssh_config.pp
