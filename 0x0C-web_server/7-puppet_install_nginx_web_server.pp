# site.pp

# Install Nginx package
package { 'nginx':
  ensure => 'installed',
}

# Configure Nginx
file { '/etc/nginx/sites-available/default':
  ensure => 'file',
  content => "
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    index index.html;

    server_name _;

    location / {
        echo 'Hello World!';
    }

    location /redirect_me {
        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
    }
}
",
}

# Remove default Nginx site
file { '/etc/nginx/sites-enabled/default':
  ensure => 'absent',
}

# Enable configured site
file { '/etc/nginx/sites-enabled/':
  ensure => 'directory',
  recurse => true,
  purge => true,
}

# Reload Nginx
service { 'nginx':
  ensure => 'running',
  enable => true,
  subscribe => File['/etc/nginx/sites-available/default'],
}
