":_mssp_data() => MAP <mssp data>";
"Return a map of the MSSP data that we actually have available.";
mssp = [];
for value, key in (this.mssp_data)
  if (value == $nothing)
    continue;
  elseif (value == 1)
    mssp_verb = tostr("mssp_", key);
    if ($object_utils:has_callable_verb(this, mssp_verb))
      value = `this:(mssp_verb)() ! ANY => $nothing';
      if (value == $nothing)
        continue;
      endif
    endif
  endif
  mssp[key] = toliteral(value);
endfor
return mssp;
