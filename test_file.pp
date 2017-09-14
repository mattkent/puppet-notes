file { 'create_test_file':
  ensure  => file,
  name    => '/home/admin/test_file1.txt',
  content => "Look at me I'm a file!",
  mode    => '0600',
  owner   => 'admin',
  group   => 'root',
}
