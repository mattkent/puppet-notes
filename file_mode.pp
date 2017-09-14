$file_mode = $facts['os']['family'] ? {
  'Debian' => '0600',
  'Redhat' => '0655',
  default  => '0700',
}

file { '/tmp/test_mode.txt':
  ensure  => file,
  owner   => root,
  group   => root,
  mode    => $file_mode,
  content => "test mode",
}
