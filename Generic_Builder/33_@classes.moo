"$class_registry is in the following format:";
"        { {name, description, members, parent}, ... }";
"where `name' is the name of a particular class of objects, `description' is a one-sentence description of the membership of the class, `members' is a list of object numbers, the members of the class, and parent is a parent object in the player's hierarchy that may find the particular class interesting.";
"";
if (args)
  members = members_noroot = {};
  for name in (args)
    class = $list_utils:assoc_prefix(name, $class_registry);
    if (class)
      for o in (class[3])
        if (!isa(o, $root_class))
          members_noroot = setadd(members_noroot, o);
        else
          members = setadd(members, o);
        endif
      endfor
    else
      player:tell("There is no defined class of objects named `", name, "'; type `@classes' to see a complete list of defined classes.");
      return;
    endif
  endfor
  if (length(members) >= 30 || length(members_noroot) >= 30 && !$command_utils:yes_or_no("This command can be very spammy.  Are you certain you need this information?"))
    return player:tell("OK, aborting.  The lag thanks you.");
  endif
  printed = printed_noroot = {};
  for o in (members_noroot)
    what = o;
    while (valid(what))
      printed_noroot = setadd(printed_noroot, what);
      what = parent(what);
    endwhile
  endfor
  for o in (members)
    what = o;
    while (valid(what))
      printed = setadd(printed, what);
      what = parent(what);
    endwhile
  endfor
  player:tell("Members of the class", length(args) > 1 ? "es" | "", " named ", $string_utils:english_list(args), ":");
  player:tell();
  set_task_perms(player);
  if (printed)
    this:classes_2($root_class, "", members, printed);
  endif
  if (printed_noroot)
    this:classes_2($nothing, "", members_noroot, printed_noroot);
  endif
  player:tell();
else
  "List all class names and descriptions";
  player:tell("The following classes of objects have been defined:");
  for class in ($class_registry)
    if (isa(player, class[4]))
      name = class[1];
      description = class[2];
      player:tell();
      player:tell("-- ", name, ": ", description);
    endif
  endfor
  player:tell();
  player:tell("Type `@classes <name>' to see the members of the class with the given <name>.");
endif
