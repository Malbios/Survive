"+c properties on children cannot necessarily be read, so we need this silliness...";
if (caller != this)
  return E_PERM;
else
  return length(this.(args[1]));
endif
