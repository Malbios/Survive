@verb #0:"do_command" none none none rxd #0
@program #0:do_command
if (length(argstr) >= 2 && argstr[1..2] == ";;")
  result = eval(argstr[3..$]);
  if (!result[1])
    notify(player, "EVAL ERROR: " + toliteral(result[2]));
  endif
  return 1;
endif
return 0;
.
