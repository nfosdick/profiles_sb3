#
class profiles::apache {
  #

  $config = lookup('profiles::apache::config', Hash, 'deep', {})

  class { 'apache':
    default_vhost => false,
  }

  $config.each |$key, $hash| {
    apache::vhost { $key:
      * => $hash,
    }
  }
}
