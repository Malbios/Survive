if ($perm_utils:controls(caller_perms(), args[1]) || caller == this)
  return args[1].ownership_quota;
else
  return E_PERM;
endif
