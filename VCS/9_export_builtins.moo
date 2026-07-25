if (!player.wizard)
  return E_PERM;
endif
fns = function_info();
out = {};
for f in (fns)
  out = listappend(out, ["name" -> f[1], "minargs" -> f[2], "maxargs" -> f[3], "types" -> f[4]]);
endfor
fh = file_open("builtins.json", "w-tn");
file_writeline(fh, generate_json(["functions" -> out]));
file_close(fh);
return exec({"vcs-commit.sh", this.repo_root, "builtins.json", "Capture builtins.json", "MOO Capture <capture@moo.local>"});
