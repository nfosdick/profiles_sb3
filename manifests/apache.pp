#
class profiles::apache {
  # This is a staging branch

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
