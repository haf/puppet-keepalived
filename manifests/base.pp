define keepalived::base($emailto, $emailfrom, $smtpserver, $interface, $state, $priority, $auth_pass, $virtual_ips, $vrrp_script) {

  file{ '/etc/keepalived/keepalived.conf':
    owner => root, 
    group => root,
    mode => 600,
    content => template("keepalived/keepalived.conf.erb"),
    notify => Service['keepalived'],
    require => Package['keepalived']
  }

} 

