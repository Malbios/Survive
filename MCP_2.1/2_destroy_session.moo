{session} = args;
if (!(caller in {this, session}))
  raise(E_PERM);
elseif (!$object_utils:isa(session, this.session))
  raise(E_INVARG);
elseif (session == this.session)
  raise(E_INVARG);
else
  $recycler:_recycle(session);
endif
