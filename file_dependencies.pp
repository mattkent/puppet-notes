group { 'file_group':
  ensure => present,
}

user { 'file_user':
  ensure     => present,
  home       => '/home/file_user',
  managehome => true,
  gid        => 'file_group',
  shell      => '/bin/bash',
}
file { '/tmp/myfiles':
  ensure => directory,
  mode => '0770',
  owner => 'root',
  group => 'file_group',
  before => [File['/tmp/myfiles/file1.txt'], File['/tmp/myfiles/file2.txt']],
  require => User['file_user'],
}

file { '/tmp/myfiles/file1.txt':
  ensure => file,
  mode => '0600',
  owner => 'root',
  group => 'file_group',
  content => 'this is a test',
}

file { '/tmp/myfiles/file2.txt':
  ensure => file,
  mode => '0600',
  owner => 'file_user',
  group => 'file_group',
  content => 'this is a test',
}
