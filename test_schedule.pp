schedule { 'run-daily': 
  period => 'daily',
  range  => '7-22',
}

notify { 'test-run-daily': 
  message  => 'This should run during the scheudle!',
  schedule => 'run-daily',
}
