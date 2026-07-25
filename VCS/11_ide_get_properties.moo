OBJ = args[1];
set_task_perms(player);
if (!player.programmer)
  return E_PERM;
endif
tag = tostr(time()) + "-" + tostr(random(99999));
notify(player, "#$#moodev-prop-content 1 ref: " + tag + " object: " + tostr(OBJ));
for pname in (properties(OBJ))
  notify(player, "#$#* " + tag + " text: " + pname + chr(9) + toliteral(OBJ.(pname)));
endfor
notify(player, "#$#: " + tag);
return tag;
