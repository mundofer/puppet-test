file { '/tmp/hello.txt':
  ensure  => file,
  content => "#This file manager by puppet.
# Any manual edit will be lost.
Hola, mundito\n",
}