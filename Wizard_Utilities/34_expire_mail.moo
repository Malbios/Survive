if (!caller_perms().wizard)
  return E_PERM;
endif
this:expire_mail_lists();
this:expire_mail_players();
