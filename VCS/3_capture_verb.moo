OBJ = args[1];
vname = args[2];
if (maphaskey(this.lookups, OBJ))
  name = this.lookups[OBJ];
else
  raw = OBJ.name;
  if (raw == "")
    raw = "obj";
  endif
  name = this:sanitize_name(raw);
  if (name == "")
    name = "obj";
  endif
  base_name = name;
  suffix = 1;
  while (maphaskey(this.taken_names, name))
    suffix = suffix + 1;
    name = base_name + "_" + tostr(suffix);
  endwhile
  this.taken_names[name] = OBJ;
  this.lookups[OBJ] = name;
  this:write_lookups_toml();
endif
vlist = verbs(OBJ);
idx = 0;
for i in [1..length(vlist)]
  if (vname in explode(vlist[i], " "))
    idx = i;
  endif
endfor
if (idx == 0)
  idx = 1;
endif
space_pos = index(vname, " ");
raw_first_name = space_pos == 0 ? vname | vname[1..space_pos - 1];
first_name = this:sanitize_name(raw_first_name);
if (first_name == "")
  first_name = "verb";
endif
verb_file = tostr(idx) + "_" + first_name + ".moo";
path = name + "/" + verb_file;
`file_mkdir(name) ! ANY => 0';
fh = file_open(path, "w-tn");
for line in (verb_code(OBJ, raw_first_name))
  file_writeline(fh, line);
endfor
file_close(fh);
return path;
