{connection} = args;
if (caller != this)
  raise(E_PERM);
elseif (typeof(session = this.session:new()) != ANON)
  raise(session);
endif
session:set_connection(connection);
session:initialize_connection();
return session;
