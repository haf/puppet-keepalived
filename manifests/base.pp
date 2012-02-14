class keepalived::base {

  require => Package['keepalived'];

  file{'/etc/keepalived/keepalived.conf':
    owner => root,
    group => root,
    mode => 600,
    notify => Service['keepalived'],
  }

} 
