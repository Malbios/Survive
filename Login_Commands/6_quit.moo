if (caller != #0 && caller != this)
  return E_PERM;
else
  boot_player(player);
  return 0;
endif
