# 0x0F. Load balancer

## Concepts
For this project, students are expected to look at these concepts:

* [Load balancer](https://www.thegeekstuff.com/2016/01/load-balancer-intro/)
* [Web stack debugging](https://devcentral.f5.com/s/articles/intro-to-load-balancing-for-developers-ndash-the-algorithms)

## Background Context
You have been given 2 additional servers:

* gc-[STUDENT_ID]-web-02-XXXXXXXXXX
* gc-[STUDENT_ID]-lb-01-XXXXXXXXXX
Let’s improve our web stack so that there is [redundancy](https://en.wikipedia.org/wiki/Redundancy_%28engineering%29) for our web servers. This will allow us to be able to accept more traffic by doubling the number of web servers, and to make our infrastructure more reliable. If one web server fails, we will still have a second one to handle requests.

For this project, you will need to write Bash scripts to automate your work. All scripts must be designed to configure a brand new Ubuntu server to match the task requirements.

## Resources
Read or watch:

* [Introduction to load-balancing and HAproxy](https://www.digitalocean.com/community/tutorials/an-introduction-to-haproxy-and-load-balancing-concepts)
* [HTTP header](https://www.techopedia.com/definition/27178/http-header)
* [Debian/Ubuntu HAProxy packages](https://haproxy.debian.net/)

## Tasks

## [0. Double the number of webservers](./0-custom_http_response_header)
 In this first task you need to configure web-02 to be identical to web-01.
 Since we’re placing our web servers behind a load balancer for this project, we want to add a custom Nginx response header. The goal here is to be able to track which web server is answering our HTTP requests, to understand and track the way a load balancer works. More in the coming tasks.

Requirements:

* Configure Nginx so that its HTTP response contains a custom header (on [web-01] and [web-02])

The name of the custom HTTP header must be [X-Served-By]

The value of the custom HTTP header must be the hostname of the server Nginx is running on

Write [0-custom_http_response_header] so that it configures a brand new Ubuntu machine to the requirements asked in this task
Ignore SC2154 for shellcheck
Example:
```
@ubuntu$ curl -sI 34.198.248.145 | grep X-Served-By
X-Served-By: 03-web-01
@ubuntu$ curl -sI 54.89.38.100 | grep X-Served-By
X-Served-By: 03-web-02
@ubuntu$
```
If your server’s hostnames are not properly configured ([STUDENT_ID]-web-01 and [STUDENT_ID]-web-02.), follow this [tutorial](https://aws.amazon.com/premiumsupport/knowledge-center/linux-static-hostname/).

