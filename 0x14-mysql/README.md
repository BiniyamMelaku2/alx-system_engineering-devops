# 0x14. MySQL
System engineering & DevOps

## Resources
Read or watch:

* [What is a primary-replica cluster](https://www.digitalocean.com/community/tutorials/how-to-choose-a-redundancy-plan-to-ensure-high-availability#sql-replication)
* [MySQL primary replica setup](https://www.digitalocean.com/community/tutorials/how-to-set-up-replication-in-mysql)
* [Build a robust database backup strategy](https://www.databasejournal.com/features/mssql/developing-a-sql-server-backup-strategy.html)
* [Setup a Primary-Replica infrastructure using MySQL](https://medium.com/@estebandelahoz/setup-a-primary-replica-infrastructure-using-mysql-5bcab77c352)
* [How to Install MySQL 5.7 on Ubuntu 20.04 LTS](https://www.hackerxone.com/2021/06/02/how-install-mysql-57-ubuntu-2004-lts/)

## Database administration

* [What is a database](http://searchsqlserver.techtarget.com/definition/database)
* [What is a database primary/replicate cluster](https://www.digitalocean.com/community/tutorials/how-to-choose-a-redundancy-plan-to-ensure-high-availability#sql-replication)
* [MySQL primary/replicate setup](https://www.digitalocean.com/community/tutorials/how-to-set-up-replication-in-mysql)
* [Build a robust database backup strategy](https://www.databasejournal.com/features/mssql/developing-a-sql-server-backup-strategy.html)

## Tasks

## [0. Install MySQL](./)
First things first, let’s get MySQL installed on both your web-01 and web-02 servers.

* MySQL distribution must be 5.7.x

## [1. Let us in!](./)
* Create a MySQL user named holberton_user on both web-01 and web-02 with the host name set to localhost and the password projectcorrection280hbtn. This will allow us to access the replication status on both servers.
* Make sure that holberton_user has permission to check the primary/replica status of your databases.
* In addition to that, make sure that task #3 of your SSH project is completed for web-01 and web-02. You will likely need to add the public key to web-02 as you only added it to web-01 for this project. The checker will connect to your servers to check MySQL status
