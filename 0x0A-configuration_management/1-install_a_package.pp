# Ensure pip is installed
package { 'python3-pip':
  ensure => installed,
}

# Install Flask 2.1.0
exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  creates => '/usr/local/lib/python3.8/dist-packages/Flask-2.1.0.dist-info',
  require => Package['python3-pip'],
}

# Install Werkzeug 2.2.2
exec { 'install_werkzeug':
  command => '/usr/bin/pip3 install Werkzeug==2.2.2',
  creates => '/usr/local/lib/python3.8/dist-packages/Werkzeug-2.2.2.dist-info',
  require => Package['python3-pip'],
}
