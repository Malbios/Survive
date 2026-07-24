lines = {};
for OBJ in (mapkeys(this.lookups))
  name = this.lookups[OBJ];
  lines = listappend(lines, "\"" + tostr(OBJ) + "\" = \"" + name + "\"");
endfor
fh = file_open("lookups.toml", "w-tn");
for line in (lines)
  file_writeline(fh, line);
endfor
file_close(fh);
