#
class profiles::mysql {
  # This is production branch 

  $config = lookup('profiles::mysql::config', Hash, 'deep', {})

  include mysql::server

  $config.each |$key, $hash| {
    mysql::db { $key:
      * => $hash,
    }
  }
}
