exits = {};
for exit in (`verb == "obvious_exits" ? this.exits | this.entrances ! ANY => {}')
  if (`$code_utils:verb_or_property(exit, "obvious") ! ANY')
    exits = setadd(exits, exit);
  endif
endfor
return exits;
