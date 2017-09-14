$hash_var = {
  'el1' => '1',
  'el2' => '2',
  'el3' => '3',
  'el4' => '4',
}

$hash_var.each |$items| {
  notify { $items[0]:
    message => $items[1]
  }
}
