set_task_perms(caller in {this, $generic_editor, $verb_editor, $mail_editor, $note_editor} ? this.owner | caller_perms());
return `move(this, args[1]) ! ANY';
