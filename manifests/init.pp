class shit_logic {

  $crap = is_integer($::uptime_seconds)
  notify {$crap: }

  if $::hostname == 'rob.puppetlabs.vm' {
    notify {"I am Rob": }
  } else {
    notify {"I am not Rob": }
  }

  if $::uptime_seconds > 50000 {
    notify {"Up time > 50000 seconds": }
  } elsif $::uptime_seconds < 50000 and $::processorcount == 1 and $::mtu_lo >= 16436 and $::osfamily != 'redhat' {
    notify {"Oh dear": }
  } elsif $::processorcount == 3 {
    notify {"Are you joking?": }
  } elsif $::boardmanufacturer == 'ClownPants Industries' { 
    notify {"Oh no, you are running a clown car!": }
  } elsif $::virtual == 'hippopotamus' {
    notify {"hippopotamus!": }
  } elsif $::productname == "Nigel the Drop Bear" {
    notify {"Nigellllllllll!": }
  } elsif $::memoryfree_mb == 0 {
    notify {"Oh no bro, you have no memorys!": }
  } else {
    notify {"Well you are boring": }
  }

  kill_me_please()

}
