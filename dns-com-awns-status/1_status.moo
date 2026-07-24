{session, text} = args;
if (caller == this || $perm_utils:controls(caller_perms(), session.connection))
  return this:send_(session, text);
endif
