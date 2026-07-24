if (!player.wizard)
  return E_PERM;
endif
n = max_object();
for i in [#0..n]
  if (valid(i))
    for vname in (verbs(i))
      this:capture_verb(i, vname);
      if (ticks_left() < 20000 || seconds_left() < 2)
        suspend(0);
      endif
    endfor
  endif
endfor
return exec({"vcs-commit.sh", ".", "Import ToastCore", "MOO Capture <capture@moo.local>"});
