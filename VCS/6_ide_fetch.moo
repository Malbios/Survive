OBJ = args[1];
vname = args[2];
set_task_perms(player);
if (!player.programmer)
  return E_PERM;
endif
lines = verb_code(OBJ, vname);
tag = tostr(time()) + "-" + tostr(random(99999));
notify(player, "#$#moodev-edit-content 1 ref: " + tag + " object: " + tostr(OBJ) + " verb: " + vname);
for line in (lines)
  notify(player, "#$#* " + tag + " text: " + line);
endfor
notify(player, "#$#: " + tag);
return tag;
