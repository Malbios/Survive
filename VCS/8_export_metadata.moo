if (!player.wizard)
  return E_PERM;
endif
objects = {};
n = max_object();
for i in [#0..n]
  if (valid(i))
    verb_list = {};
    for vname in (verbs(i))
      idx = vname in verbs(i);
      argspec = verb_args(i, vname);
      info = verb_info(i, vname);
      verb_list = listappend(verb_list, ["index" -> idx, "names" -> vname, "owner" -> info[1], "perms" -> info[2], "dobj" -> argspec[1], "prep" -> argspec[2], "iobj" -> argspec[3]]);
    endfor
    property_list = {};
    for pname in (properties(i))
      pinfo = property_info(i, pname);
      property_list = listappend(property_list, ["name" -> pname, "owner" -> pinfo[1], "perms" -> pinfo[2]]);
    endfor
    flags = ["player" -> is_player(i), "programmer" -> i.programmer, "wizard" -> i.wizard, "r" -> i.r, "w" -> i.w, "f" -> i.f, "a" -> i.a];
    objects = listappend(objects, ["num" -> i, "name" -> i.name, "parents" -> parents(i), "children" -> children(i), "verbs" -> verb_list, "owner" -> i.owner, "flags" -> flags, "properties" -> property_list]);
    if (ticks_left() < 20000 || seconds_left() < 2)
      suspend(0);
    endif
  endif
endfor
sysobj_props = [];
for pname in (properties(#0))
  val = #0.(pname);
  if (typeof(val) == OBJ)
    sysobj_props[pname] = val;
  endif
endfor
fh = file_open("metadata.json", "w-tn");
file_writeline(fh, generate_json(["objects" -> objects, "sysobj_props" -> sysobj_props]));
file_close(fh);
return exec({"vcs-commit.sh", this.repo_root, "metadata.json", "Update metadata.json", "MOO Capture <capture@moo.local>"});
