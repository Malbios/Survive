":connection_name_lookup(connection)";
"Perform a threaded DNS lookup on 'connection' and record it to avoid multiple calls.";
if (caller != #0 && caller != this)
  return E_PERM;
endif
{connection} = args;
if (!(connection in this.name_lookup_players))
  this.name_lookup_players = setadd(this.name_lookup_players, connection);
  try
    result = connection_name_lookup(connection, 1);
    if (typeof(result) == MAP)
      $mail_agent:send_messsage(this, $wiz_utils.gripe_recipients, {"connection_name_lookup error", $wiz_utils.gripe_recipients}, {result["error"], result["message"]});
    endif
  except (E_INVARG, E_QUOTA)
    "Not a critical error, but you may want to do something with it here.";
  endtry
endif
