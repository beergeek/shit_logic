# We really want to test catalogs / minute
# At 2000 nodes every 10, thats 200 nodes
class shit_logic::clamps (
  $runinterval = '10m',
) {
  
  ini_setting {'runinternval':
    ensure  => present,
    path    => '/etc/puppetlabs/puppet/puppet.conf',
    section => 'agent',
    setting => 'runinterval',
    value   => $runinterval,
    notify  => Service['pe-puppet'],
  }
}
