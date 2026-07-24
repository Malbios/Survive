set_task_perms(player);
try
  dobj.open_key = 0;
  player:tell("Unlocked ", dobj.name, " for opening.");
except error (ANY)
  player:tell(error[2], ".");
endtry
