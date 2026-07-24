{who, linelen} = args;
if (caller != this)
  return E_PERM;
endif
who.linelen = linelen;
