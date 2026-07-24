if (c = player:contents())
  this:tell_contents(c);
else
  player:tell("You are empty-handed.");
endif
