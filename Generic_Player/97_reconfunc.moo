if (valid(cp = caller_perms()) && caller != this && !$perm_utils:controls(cp, this) && caller != $sysobj)
  return E_PERM;
endif
return this:confunc(@args);
