if (args && !this:is_usable_by(args[1]) && !args[1].wizard)
  return this:moderator_notify(@args);
else
  return this.(verb);
endif
