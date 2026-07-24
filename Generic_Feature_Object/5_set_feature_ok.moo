if ($perm_utils:controls(caller_perms(), this) || caller == this)
  return this.feature_ok = args[1];
else
  return E_PERM;
endif
