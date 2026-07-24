if (!caller_perms().wizard)
  raise(E_PERM);
endif
pass(@args);
this.("@quota") = {"*forward*", "object-quota"};
