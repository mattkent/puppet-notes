file { '/tmp/test_file.txt':
  content => "This is a test of the emeregency broadcast stytem.  This is only a test!",
  mode    => '0600',
  owner   => 'root', 
  group   => 'root',
}
