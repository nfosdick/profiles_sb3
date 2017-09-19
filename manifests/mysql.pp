#
class profiles::mysql {
  #

  $config = lookup('profiles::mysql::config', Hash, 'deep', {})
  notify{"$config":}
  include mysql::server

  $config.each |$index, $value| {
   notify { $value: message => $index }
  } 
}
