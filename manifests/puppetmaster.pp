#
class profiles::puppetmaster {
  include hiera_wrapper

  ini_subsetting {'Disable Hiera Automatic Binding':
    ensure            => present,
    section           => 'main',
    key_val_separator => '=',
    path              => '/etc/puppetlabs/puppet/puppet.conf'
    setting           => 'data_binding_terminus',
    value             => 'none',
  }
}
