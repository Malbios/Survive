if (valid(cp = caller_perms()) && caller != this && !$perm_utils:controls(cp, this) && caller != #0)
  return E_PERM;
endif
this:("@last-connection")();
$news:check();
