group { 'bones':
  ensure => present,
  gid    => 3000,
}

user { 'fgarcia':
  ensure => absent,
  uid => 3001,
  home => '/home/fgarcia',
  shell => '/bin/bash',
  groups => ['bones'],
}