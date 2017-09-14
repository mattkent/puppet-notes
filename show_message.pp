define show_message (
  String $message,
){
  notify { $title:
    message => $message,
  }
}

$messages = {
  'message1' => { message => 'This is message1' },
  'message2' => { message => 'This is message2' },
}

create_resources (show_message, $messages)
