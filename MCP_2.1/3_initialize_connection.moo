{who} = args;
if (caller != this)
  raise(E_PERM);
endif
return this:create_session(who);
