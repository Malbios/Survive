who = caller_perms();
{what, papas, ?anon_kids = {}} = args;
if (typeof(what) != OBJ)
  retval = E_TYPE;
elseif (!valid(what))
  retval = E_INVARG;
elseif (typeof(papas) != LIST)
  retval = E_TYPE;
elseif (!$perm_utils:controls(who, what))
  retval = E_PERM;
elseif (is_player(what) && !occupants(papas, $player_class) && !who.wizard)
  retval = E_PERM;
elseif (children(what) && $object_utils:isa(what, $player_class) && !occupants(papas, $player_class))
  retval = E_PERM;
elseif (is_player(what) && what in $wiz_utils.chparent_restricted && !who.wizard)
  retval = E_PERM;
elseif (what.location == $mail_agent && $object_utils:isa(what, $mail_recipient) && !$object_utils:isa(papa, $mail_recipient) && !who.wizard)
  retval = E_PERM;
else
  for x in (papas)
    if (!$perm_utils:controls(who, x) && !x.f)
      retval = E_PERM;
      break;
    endif
  endfor
  if (`typeof(retval) ! ANY => 0' != ERR)
    retval = `chparents(@args) ! ANY';
  endif
endif
return typeof(retval) == ERR && $code_utils:dflag_on() ? raise(retval) | retval;
