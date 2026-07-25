player = args[1];
tag = tostr(time()) + "-" + tostr(random(99999));
notify(player, "#$#moodev-login-result 1 ref: " + tag + " ok: 1 player: " + tostr(player) + " name: " + player.name);
notify(player, "#$#: " + tag);
