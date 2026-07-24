desc = this:description();
if (desc)
  player:tell_lines(desc);
else
  player:tell("You see nothing special.");
endif
