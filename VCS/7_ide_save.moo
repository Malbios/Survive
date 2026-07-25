OBJ = args[1];
vname = args[2];
lines = args[3];
set_task_perms(player);
if (!player.programmer)
  return E_PERM;
endif
errors = set_verb_code(OBJ, vname, lines);
tag = tostr(time()) + "-" + tostr(random(99999));
ok = length(errors) == 0;
notify(player, "#$#moodev-edit-result 1 ref: " + tag + " object: " + tostr(OBJ) + " verb: " + vname + " ok: " + tostr(ok));
for ERR in (errors)
  notify(player, "#$#* " + tag + " text: " + ERR);
endfor
notify(player, "#$#: " + tag);
return tag;
