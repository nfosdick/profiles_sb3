#
class profiles::mysql {
  #

  $config = lookup('profiles::mysql::config', Hash[String], 'deep', {})
  notify{"$config":}
  include mysql::server

}
