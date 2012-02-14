define keepalived::webmail($emailto, $emailfrom, $smtpserver, $interface, $state, $priority, $auth_pass, $virtual_ips) {

  file{ '/etc/keepalived/keepalived.conf':
    owner => root, 
    group => root,
    mode => 600,
    content => template("keepalived/keepalived-webmail.conf.erb"),
    notify => Service['keepalived'],
    require => Package['keepalived']
  }

} 

