"parse_message_seq(strings,cur)         => msg_seq";
"messages_in_seq(msg_seq);              => text of messages in msg_seq";
"display_seq_headers(msg_seq[,current]) :displays summary lines of those msgs";
"rmm_message_seq(msg_seq)               => string giving msg numbers removed";
"undo_rmm()    => msg_seq of restored messages";
"expunge_rmm() => number of messages expunged";
"list_rmm()    => number of messages awaiting expunge";
"renumber(cur) => {number of messages in folder, new_cur}";
"";
"See the corresponding routines on $mail_agent.";
if (caller == $mail_agent || $perm_utils:controls(caller_perms(), this))
  set_task_perms(this.owner);
  return $mail_agent:(verb)(@args);
else
  return E_PERM;
endif
