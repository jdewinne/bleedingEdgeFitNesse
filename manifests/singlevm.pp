class platform {

  file { "/etc/timezone":
    content => "Etc/UTC",
    ensure => present,
  } 

}

Exec { path => [ "/bin", "/sbin" , "/usr/bin", "/usr/sbin" ] }
include platform

import "openjdk.pp"
import "fitnesse.pp"
