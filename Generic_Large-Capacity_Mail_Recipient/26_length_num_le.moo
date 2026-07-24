return this:ok(caller, caller_perms()) ? this._mgr:find_ord(this.messages, args[1], "_lt_msgnum") | E_PERM;
