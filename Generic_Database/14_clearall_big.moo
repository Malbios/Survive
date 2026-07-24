if (!($perm_utils:controls(caller_perms(), this) || caller == this))
  return E_PERM;
endif
this:_kill_subtrees("", 0);
this:clearall(@args);
