"Copied from The System Object (#0):user_connected by Slartibartfast (#4242) Sun May 21 18:14:16 1995 PDT";
if (callers())
  return;
endif
$mcp:(verb)(@args);
user = args[1];
set_task_perms(user);
try
  user.location:confunc(user);
  user:confunc();
except id (ANY)
  user:tell("Confunc failed: ", id[2], ".");
  for tb in (id[4])
    user:tell("... called from ", tb[4], ":", tb[2], tb[4] != tb[1] ? tostr(" (this == ", tb[1], ")") | "", ", line ", tb[6]);
  endfor
  user:tell("(End of traceback)");
endtry
