# 0x0A. Configuration management
 Foundations > System engineering & DevOps > CI/CD

## Resources
Read or watch:

* [Intro to Configuration Management](https://www.digitalocean.com/community/tutorials/an-introduction-to-configuration-management)
* [Puppet resource type: file (check “Resource types” for all manifest types in the left menu)](https://puppet.com/docs/puppet/3.8/types/file.html)
* [Puppet’s Declarative Language: Modeling Instead of Scripting](https://puppet.com/blog/puppets-declarative-language-modeling-instead-of-scripting/)
* [Puppet lint](http://puppet-lint.com/)
* [Puppet emacs mode](https://github.com/voxpupuli/puppet-mode)
* [puppet-creating-file-on-an-agent](https://stackoverflow.com/questions/54680582/puppet-creating-file-on-an-agent)
* [Conditionally create a file in puppet](http://ryanuber.com/04-17-2010/conditional-file-creation-puppet.html)
* [install-package](https://www.puppetcookbook.com/posts/install-package.html)
* [PuppetTutorial](https://blog.example42.com/tutorials/PuppetTutorial/#slide-48)
* [puppet-tutorial](https://www.tutorialandexample.com/puppet-tutorial)
* [Puppet CookBook](https://www.puppetcookbook.com/posts/install-basic-docker-daemon.html)
* [Learning Puppet Manifests files with Examples](https://www.youtube.com/watch?v=fToNBS9yxw8)
* [Learning Puppet : Using exec for Executing System Commands ](https://www.youtube.com/watch?v=42PGr9gQbko)
* [puppet tutorial installation on ubuntu,centos,fedora, linux](https://www.youtube.com/watch?v=j4331uoHIR8&list=PLrUFyg1unBb-mkbm_cWwHd0ziigVK2tzj&index=3)
* [Puppet Tutorials and Courses](https://hackr.io/tutorials/learn-puppet)




## Install puppet-lint
```
$ apt-get install -y ruby
$ gem install puppet-lint -v 2.1.1
```

## Tasks

## [0. Create a file](./0-create_a_file.pp)
  Using Puppet, create a file in /tmp.

Requirements:

* File path is /tmp/holberton
* File permission is 0744
* File owner is www-data
* File group is www-data
* File contains I love Puppet
> puppet-lint --version

> puppet-lint 0-create_a_file.pp

> puppet apply 0-create_a_file.pp

> ls -l /tmp/holberton

> cat /tmp/holberton

## [1. Install a package](./1-install_a_package.pp)
  Using Puppet, install puppet-lint.

Requirements:

* Install puppet-lint
* Version must be 2.1.1
> puppet apply 1-install_a_package.pp

> gem list

## [2. Execute a command](./2-execute_a_command.pp)
  Using Puppet, create a manifest that kills a process named killmenow.

Requirements:

* Must use the exec Puppet resource
* Must use pkill

Terminal #0 - starting my process

> ./killmenow

Terminal #1 - executing my manifest

> puppet apply 2-execute_a_command.pp

Terminal #0 - process has been terminated

> ./killmenow

