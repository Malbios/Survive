if (caller_perms().wizard)
  pass(@args);
  this:clearall();
  this.registrar = #2;
  this:prune_reset();
endif
