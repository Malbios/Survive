OBJ = args[1];
vname = args[2];
programmer = args[3];
had_lookup = maphaskey(this.lookups, OBJ);
path = this:capture_verb(OBJ, vname);
name = this.lookups[OBJ];
if (!had_lookup)
  exec({"vcs-commit.sh", this.repo_root, "lookups.toml", "Update lookups.toml", "MOO Capture <capture@moo.local>"});
endif
message = "Program " + name + ":" + vname + " (" + tostr(OBJ) + ")";
if (valid(programmer))
  author = programmer.name + " <player" + tostr(programmer) + "@moo.local>";
else
  author = "Unknown <unknown@moo.local>";
endif
return exec({"vcs-commit.sh", this.repo_root, path, message, author});
