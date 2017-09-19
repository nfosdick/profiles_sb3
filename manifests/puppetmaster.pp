#
class profiles::puppetmaster {
  include hiera_wrapper

  ini_subsetting {'data_binding_terminus':
    ensure            => present,
    section           => 'master',
    key_val_separator => '=',
    path              => '/etc/puppetlabs/puppet/puppet.conf',
    setting           => 'data_binding_terminus',
    value             => 'none',
    notify            => Service[ 'pe-puppetserver' ],
  }
}
