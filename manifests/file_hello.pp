file { '/tmp/hello.txt':
  ensure  => file,
  content => "#This file manager by puppet.
# Any manual edit will be lost.
Hola, mundo a punto de suicidarse\n",
}