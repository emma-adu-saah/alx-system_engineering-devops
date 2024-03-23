# Installs flask --version 2.1.0 from pip3

package { 'pip3':
  ensure => installed,
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  path => ['/usr/bin', '/usr/local/bin'],
  environment => ['PATH=/usr/bin:/usr/local/bin'],
  unless => '/usr/bin/pip3 show Flask | grep -q  "Version: 2.1.0"',
}
