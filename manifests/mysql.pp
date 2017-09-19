#
class profiles::mysql {
  #

  $config = lookup('profiles::mysql::config', Hash, 'deep', {})

  include mysql::server

  #$config.each |$index, $value| {
  # notify { $value: message => $index }
  #} 
}
