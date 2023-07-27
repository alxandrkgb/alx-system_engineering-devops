# Simple Web Stack

![Web Infrastructure](https://imgur.com/5tVnJuc)



## Description

This is a design of a simple web infrastructure that host a website reachable via www.foobar.com using a server, web server (Nginx), application server, application files (code base), and a database (MySQL). The domain name foobar.com is configured with a www record that points to the server IP 8.8.8.8.



## Specifics About The Infrastructure

- Server
A physical or virtual machine that hosts all the services and components required for the web infrastructure.

- Domain Name
The domain name is the human-readable address used to access the website. In this case, the domain name is "www.foobar.com."

- DNS Record
The DNS (Domain Name System) record is used to associate the domain name with the server's IP address. For www.foobar.com, we need to configure an "A" record that points to the server's IP address (e.g., 8.8.8.8).

- Web Server (Nginx)
The web server's role is to handle incoming HTTP requests from users' browsers and serve the appropriate web pages or files in response.

- Application Server
The application server runs the web application code and processes the business logic. It communicates with the web server to generate dynamic content for the users.

- Application Files (Code Base)
This includes all the files and code that constitute the web application, such as HTML, CSS, JavaScript, and server-side scripts.

- Database (MySQL)
The database stores and manages the website's data, such as user accounts, posts, or any other information required by the web application.

- Communication Protocol
The server communicates with the user's computer through the HTTP(S) protocol. When a user requests www.foobar.com, their computer sends an HTTP request to the server, and the server responds with the requested web page.


## Issues With The Infrastructure

- SPOF (Single Point of Failure)
Since we have a single server hosting the entire infrastructure, it becomes a single point of failure. If the server goes down or experiences issues, the website will become inaccessible.

- Downtime during Maintenance
When performing maintenance tasks, such as deploying new code or restarting the web server, the website may experience downtime, leading to a negative user experience.

- Limited Scalability
With only one server, the infrastructure may not be able to handle a large volume of incoming traffic. As the user base grows, the server may become overloaded, resulting in slower response times and potential crashes.
