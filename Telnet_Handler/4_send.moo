":send(OBJ <player>, LIST <telnet commands>) => INT <success>";
"Send binary encoded <telnet commands> to <player>.";
{who, commands} = args;
if (!(caller in {$sysobj, this}))
  raise(E_PERM);
elseif (!(who in connected_players(1)))
  return E_INVARG;
elseif (typeof(commands) != LIST)
  return E_INVARG;
else
  try
    set_connection_option(who, "binary", 1);
    notify(who, encode_binary(commands));
  finally
    set_connection_option(who, "binary", 0);
  endtry
  return 1;
endif
