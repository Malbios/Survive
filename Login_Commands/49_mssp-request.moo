"Return MSSP variables using the plaintext fallback protocol.";
if (caller != $sysobj && caller != this)
  return E_PERM;
elseif (!$telnet.mssp_active)
  return 1;
else
  tab = $string_utils.tab;
  mssp_data = $telnet:_mssp_data();
  notify(player, "");
  notify(player, "MSSP-REPLY-START");
  for value, key in (mssp_data)
    notify(player, tostr(key, tab, value));
  endfor
  notify(player, "MSSP-REPLY-END");
  return 0;
endif
