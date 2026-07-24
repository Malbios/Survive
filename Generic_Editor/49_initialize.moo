if ($perm_utils:controls(caller_perms(), this))
  pass(@args);
  this:kill_all_sessions();
endif
