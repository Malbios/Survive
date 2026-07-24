if (!this:trust(caller_perms()))
  return E_PERM;
endif
con = args[1];
if (!this:is_outgoing_connection(con))
  return E_INVARG;
endif
boot_player(con);
if (i = $list_utils:iassoc(con, $network.connect_connections_to))
  $network.connect_connections_to = listdelete($network.connect_connections_to, i);
endif
return 1;
