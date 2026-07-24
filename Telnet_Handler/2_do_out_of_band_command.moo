"Process out of band data for telnet command sequences.";
"As of right now, only 'IAC DO' command sequences are processed. You can, of course, extend this verb to support other telnet commands as needed.";
if (caller != $sysobj)
  raise(E_PERM);
endif
cmd = decode_binary(args[1], 1);
"Don't process commands that don't begin with 'IAC DO'.";
if (length(cmd) < 3 || cmd[1..2] != {this.commands["IAC"], this.commands["DO"]})
  return 0;
endif
".handled_commands maps telnet options to MOO verbs. e.g. '70' is the MSSP option, which maps to the 'do_mssp' verb.";
if (cmd[3] in mapkeys(this.handled_commands))
  return this:(this.handled_commands[cmd[3]])(cmd[3..$]);
else
  return 0;
endif
