if ($perm_utils:controls(caller_perms(), this))
  return pass(@args);
else
  return E_PERM;
endif
