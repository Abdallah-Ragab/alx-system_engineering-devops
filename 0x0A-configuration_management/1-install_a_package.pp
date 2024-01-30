# Install a specific version of flask (2.1.0)

package {'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  before   => 'Werkzeug'
}

package {'Werkzeug':
  ensure   => '2.2.2',
  provider  => 'pip3'
}
