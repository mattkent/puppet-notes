group { 'admin':
  ensure     => present,
}
user { 'admin':
  ensure     => present,
  password   => '$1$A4a86YdP$GoEl1tmVgo0jxRtUJhprR.',
  home       => '/home/admin',
  managehome => true,
  gid        => 'admin',
  groups     => 'wheel',
  shell      => '/bin/bash',
}
