file { '/tmp/datos':
  content => 'test1',
  notify => Exec['nuevousuario'],
}

exec { 'nuevousuario':
  command => 'echo $/tmp/datos | /usr/sbin/useradd'
}