if (!caller_perms().wizard)
  return E_PERM;
endif
pass(@args);
this.mowner = $hacker;
this._mgr = $biglist;
