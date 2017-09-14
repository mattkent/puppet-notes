$array_var = ['a', 'b', 'c', 'd']

$array_var.each | $value | {
  notify { $value:
    message => $value,
  }
}
