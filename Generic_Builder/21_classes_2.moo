{root, indent, members, printed} = args;
if (root != $nothing)
  if (root in members)
    player:tell(indent, root.name, " (", root, ")");
  else
    player:tell(indent, "<", root.name, " (", root, ")>");
  endif
endif
printed = setremove(printed, root);
if (root != $nothing)
  indent = indent + "  ";
else
  indent = "";
endif
set_task_perms(caller_perms());
if (root == $nothing)
  "children($nothing) is invalid, so make other arrangements.";
  objects = {};
  for x in (printed)
    if (parent(x) == $nothing)
      objects = {@objects, x};
    endif
    $command_utils:suspend_if_needed(1);
  endfor
else
  objects = $set_utils:intersection(children(root), printed);
endif
for c in ($list_utils:sort_suspended(2, objects))
  $command_utils:suspend_if_needed(10);
  this:classes_2(c, indent, members, printed);
endfor
