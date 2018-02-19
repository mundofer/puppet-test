group { 'bones':
  ensure => present,
  gid    => 3000,
}

user { 'fgarcia':
  ensure => present,
  uid => 3001,
  home => '/home/fgarcia',
  shell => '/bin/bash',
  groups => ['bones'],
}