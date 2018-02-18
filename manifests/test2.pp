file { '/tmp/test2.txt':
  ensure  => file,
source => 'puppet:///test2.txt'
}