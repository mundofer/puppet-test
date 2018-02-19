group { 'bones':
  ensure => present,
  gid    => 3000,
}

user { 'fgarcia':
  ensure => present,
  home => '/home/fgarcia',
  shell => '/bin/bash',
  groups => ['bones'],
}