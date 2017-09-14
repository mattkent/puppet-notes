$messages = {
  'message1' => {
    'name' => 'message test1',
    'message' => 'This is a test1',
  },
  'message2' => {
    'name' => 'message test2',
    'message' => 'This is also a test!',
  },
}

create_resources(notify, $messages)
