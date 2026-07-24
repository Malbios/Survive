cmd = args[1];
if (pc = $list_utils:assoc(cmd, this.commands))
  return pc;
elseif (this == $generic_editor)
  return {cmd, "<<<<<======= Need to add this to .commands"};
else
  return parent(this):commands_info(cmd);
endif
