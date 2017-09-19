#
class profiles::mysql {
  #

  $config = lookup('profiles::mysql::config')

  include mysql::server

  $config.each |$index, $value| {
   notify { $value: message => $index }
  } 
}
