#
class profiles::mysql {
  #

  $config = lookup('profiles::mysql::config', Hash, 'deep', {})
  notify{"$config":}
  include mysql::server

  $config.each |$key, $value| {
    notify { $key: message => $value }
  }
}
