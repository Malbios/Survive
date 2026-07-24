if (caller != this._mgr)
  return E_PERM;
elseif (node = args[1][1])
  this:_kill(node);
endif
