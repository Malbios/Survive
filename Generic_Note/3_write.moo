if (this:is_writable_by(valid(caller_perms()) ? caller_perms() | player))
  this:set_text({@this.text, dobjstr});
  player:tell("Line added to note.");
else
  player:tell("You can't write on this note.");
endif
