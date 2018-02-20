file { '>>/tmp/calculate':
  content => 'yes',
  notify => Exec['calculate size'],
 }

exec { 'calculate size':
  command => '/bin/df > /tmp/sizes'
  refreshonly => true, 
}