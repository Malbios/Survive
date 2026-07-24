return this:ok(who = args[1]) && ((unchanged = !args[2]) || (this.times[who] = time()) && (this.changes[who] = !unchanged));
