file { '/tmp/goodbyte.txt':
  ensure  => file,
source => '/home/vagrant/puppet/files/adios.txt'
}