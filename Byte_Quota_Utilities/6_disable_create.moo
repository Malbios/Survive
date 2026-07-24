if (caller != this && !caller_perms().wizard)
  return E_PERM;
else
  args[1].ownership_quota = this.large_negative_number;
endif
