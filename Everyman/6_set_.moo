if (!caller_perms().wizard)
  return E_PERM;
else
  return pass(@args);
endif
