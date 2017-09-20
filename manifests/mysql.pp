#
class profiles::mysql {
  # This is staging branch 

  $config = lookup('profiles::mysql::config', Hash, 'deep', {})

  include mysql::server

  $config.each |$key, $hash| {
    mysql::db { $key:
      * => $hash,
    }
  }
}
