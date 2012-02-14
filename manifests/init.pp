class keepalived {

  package{'keepalived':
    ensure => present,
  }
   
  service {'keepalived':
    ensure => running,
    require => Package['keepalived'];
  }

} 
