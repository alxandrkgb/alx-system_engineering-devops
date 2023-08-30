# Secured And Monitored Web Infrastructure

![Web Infrastructure](https://github.com/alxandrkgb/alx-system_engineering-devops/blob/master/0x09-web_infrastructure_design/2-secured_and_monitored_web_infrastructure.jpg) 



## Description

This is a design of a three server web infrastructure that hosts the website www.foobar.com, is secured, serves encrypted traffic, and is monitored



## Specifics About The Infrastructure

- Three Firewalls
Firewalls are added to control incoming and outgoing network traffic. They act as a security barrier between the servers and the external network, helping to prevent unauthorized access and potential attacks.

- SSL Certificate
An SSL certificate is added to enable HTTPS for www.foobar.com. HTTPS encrypts the traffic between the users' browsers and the web servers, ensuring secure communication and protecting sensitive data during transmission.

- Monitoring Clients
Monitoring clients (data collectors) are installed on the servers to gather and send monitoring data to a monitoring service (e.g., Sumo Logic). This enables proactive monitoring of the infrastructure's health and performance.

- HTTPS
The traffic is served over HTTPS to provide encryption and data integrity during transmission. HTTPS ensures that data transmitted between users and the servers cannot be easily intercepted or tampered with by malicious actors.

- Monitoring
Monitoring is used to keep track of the infrastructure's performance, resource utilization, and health. It allows for early detection of potential issues, enabling timely interventions to prevent downtime or other problems.

- Monitoring Data Collection
The monitoring tool collects data through monitoring clients (data collectors) installed on the servers. These clients continuously collect relevant metrics, logs, and performance data from the servers and send it to the monitoring service.

- Monitoring Web Server QPS
To monitor the web server's QPS (Queries Per Second), the monitoring tool can collect metrics related to incoming HTTP requests and response times. By analyzing these metrics, administrators can identify patterns, peak traffic periods, and potential bottlenecks.



## Issues With The Infrastructure

- Terminating SSL at Load Balancer
Terminating SSL at the load balancer level can be an issue because it means that the traffic between the load balancer and the web servers is unencrypted. This creates a potential security vulnerability, as the internal network traffic may be exposed to potential threats.

- Single MySQL Server for Writes
Having only one MySQL server capable of accepting writes creates a single point of failure. If this server goes down or experiences issues, the website's ability to handle write operations will be affected.

- Uniform Server Components
Having servers with all the same components (database, web server, and application server) might be a problem because it lacks diversity and redundancy. If a critical vulnerability or bug affects one component, it may affect all servers simultaneously, leading to widespread issues or outages. Introducing different versions or configurations can improve fault tolerance.
