file { '/tmp/test2.txt':
  ensure  => file,
source => 'test2.txt'
}