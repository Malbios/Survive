return caller == this || caller_perms().wizard ? pass(@args) | E_PERM;
