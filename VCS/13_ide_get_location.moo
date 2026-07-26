set_task_perms(player);
if (!player.programmer)
  return E_PERM;
endif
room = player.location;
tag = tostr(time()) + "-" + tostr(random(99999));
if (!valid(room))
  notify(player, "#$#moodev-location-content 1 ref: " + tag + " room: none");
  notify(player, "#$#: " + tag);
  return tag;
endif
try
  exits = room.exits;
except ERR (E_PROPNF)
  exits = {};
endtry
notify(player, "#$#moodev-location-content 1 ref: " + tag + " room: " + tostr(room));
notify(player, "#$#* " + tag + " text: room" + chr(9) + tostr(room) + chr(9) + room.name);
for e in (exits)
  notify(player, "#$#* " + tag + " text: exit" + chr(9) + tostr(e) + chr(9) + e.name);
endfor
for c in (room.contents)
  if (c != player)
    notify(player, "#$#* " + tag + " text: content" + chr(9) + tostr(c) + chr(9) + c.name);
  endif
endfor
notify(player, "#$#: " + tag);
return tag;
