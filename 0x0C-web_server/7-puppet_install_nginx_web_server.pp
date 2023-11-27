# Define the class for Nginx installation and configuration
class nginx_server {
  
  package { 'nginx':
    ensure => installed,
  }

  file { '/etc/nginx/sites-available/default':
    content => "
      server {
        listen 80 default_server;
        listen [::]:80 default_server;

        root /var/www/html;
        index index.html;

        location / {
          echo 'Hello World!';
        }

        location /redirect_me {
          return 301 https://www.example.com/new_page;
        }
      }
    ",
    require => Package['nginx'],
  }

  service { 'nginx':
    ensure  => running,
    enable  => true,
    require => File['/etc/nginx/sites-available/default'],
  }
}

# Apply the nginx_server class to the node
node '98.98.98.98' {
  include nginx_server
}
