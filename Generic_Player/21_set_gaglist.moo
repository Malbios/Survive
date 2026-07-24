":set_gaglist(@newlist) => this.gaglist = newlist";
if (!(caller == this || $perm_utils:controls(caller_perms(), this)))
  return E_PERM;
else
  return this.gaglist = args;
endif
