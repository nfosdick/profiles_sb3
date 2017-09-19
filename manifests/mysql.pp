#
class profiles::mysql {
  #

  $config = lookup('profile::mysql::config', Hash, deep)

  include mysql::server

  $config.each |$index, $value| {
   notify { $value: message => $index }
  } 
}
