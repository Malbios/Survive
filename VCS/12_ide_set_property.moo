OBJ = args[1];
pname = args[2];
literal = args[3];
set_task_perms(player);
if (!player.programmer)
  return E_PERM;
endif
tag = tostr(time()) + "-" + tostr(random(99999));
ok = 0;
errtext = "";
try
  result = eval("return " + literal + ";");
  if (result[1])
    try
      OBJ.(pname) = result[2];
      ok = 1;
    except err2 (ANY)
      errtext = tostr(err2[2]);
    endtry
  else
    errtext = "parse error";
  endif
except ERR (ANY)
  errtext = tostr(ERR[2]);
endtry
notify(player, "#$#moodev-prop-result 1 ref: " + tag + " object: " + tostr(OBJ) + " property: " + pname + " ok: " + tostr(ok));
if (!ok)
  notify(player, "#$#* " + tag + " text: " + errtext);
endif
notify(player, "#$#: " + tag);
return tag;
