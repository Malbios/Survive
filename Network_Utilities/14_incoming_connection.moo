"Peer at an incoming connection.  Decide if it should be connected to something, return that object. If it should be ignored (outbound connection), return 1. Called only by #0:do_login_command";
if (caller != #0)
  return;
endif
what = args[1];
"this code for unix servers >= 1.7.5 only";
if (this:is_outgoing_connection(what))
  "outbound connection";
  if (ct = $list_utils:assoc(what, this.connect_connections_to))
    this.connect_connections_to = setremove(this.connect_connections_to, ct);
    return ct[2];
  else
    return 1;
  endif
else
  return 0;
endif
