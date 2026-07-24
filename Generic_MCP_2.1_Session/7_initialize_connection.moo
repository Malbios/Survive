if (caller != $mcp)
  raise(E_PERM);
else
  this:send("mcp", {{"version", "2.1"}, {"to", "2.1"}});
endif
