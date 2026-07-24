lines = args[1];
if (typeof(lines) == LIST)
  for line in (lines)
    this:tell(line);
    $command_utils:suspend_if_needed(0);
  endfor
else
  this:tell(lines);
endif
