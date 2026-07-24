if (caller_perms() in {this, this.owner})
  return pass(@args);
else
  return E_PERM;
endif
