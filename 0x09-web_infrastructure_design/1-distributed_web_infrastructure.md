# Distributed Web Infrastructure

![Web Infrastructure](https://github.com/alxandrkgb/alx-system_engineering-devops/blob/master/0x09-web_infrastructure_design/1-distributed_web_infrastructure.jpg) 



## Description

This is a design of a distributed web infrastructure that host a website reachable via www.foobar.com using two servers, web server (Nginx), application server, load-balancer (HAproxy), application files (code base), and a database (MySQL). This distributed web infrastructure atttempts to reduce the traffic to the primary server by distributing some of the load to a replica server with the aid the load-balancer (HAproxy)



## Specifics About The Infrastructure

- Two Server
We are adding two servers to achieve better redundancy and high availability. This helps to eliminate the single point of failure (SPOF) that existed in the previous one-server setup.

- Web Server (Nginx)
The web server's role remains the same as in the previous setup, handling incoming HTTP requests and serving static files.

- Application Server
The application server is responsible for running the web application code and processing dynamic content.

- Load Balancer (HAproxy)
The load balancer distributes incoming requests across multiple servers to balance the load and improve performance. It helps prevent overloading a single server and ensures better availability.

- Application Files (Code Base)
This includes the web application code, similar to the previous setup.

- Database (MySQL)
The database stores and manages the website's data.



## Issues With The Infrastructure

- SPOF (Single Point of Failure)
Although we have added redundancy with multiple servers, there may still be a single point of failure if the load balancer becomes unavailable. Implementing multiple load balancers in a high-availability setup can address this.

- Security Issues
The infrastructure lacks a firewall to protect against unauthorized access. Additionally, there is no HTTPS, which can lead to security vulnerabilities. Implementing a firewall and enabling HTTPS with SSL/TLS certificates is essential for securing the website.

- No Monitoring
Monitoring tools are not present to track the health and performance of servers, web server, application server, load balancer, and database. Monitoring helps detect issues early and ensures proactive management of the infrastructure.
