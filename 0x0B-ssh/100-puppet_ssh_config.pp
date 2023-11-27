file_line { 'Turn off passwd auth':
  path   => '/etc/ssh/sshd_config',
  line   => 'PasswordAuthentication no',
  ensure => present,
}

file_line { 'Declare identity file':
  path   => '/home/your_username/.ssh/config', # Replace 'your_username' with your actual username
  line   => 'IdentityFile ~/.ssh/school',
  ensure => present,
}
