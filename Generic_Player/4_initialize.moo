if (caller == this || $perm_utils:controls(caller_perms(), this))
  this.help = 0;
  return pass(@args);
else
  return E_PERM;
endif
