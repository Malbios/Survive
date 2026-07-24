if (caller_perms().wizard)
  pass(@args);
  this.mail_notify = {player};
  player:set_current_message(this, 0, 0, 1);
  this.moderated = 1;
else
  return E_PERM;
endif
