"called when restarting to clean out state.";
if (caller != #0)
  return E_PERM;
endif
this.connect_connections_to = {};
