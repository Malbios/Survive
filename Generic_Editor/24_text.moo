{?who = player in this.active} = args;
return this:readable(who) || this:ok(who) && this.texts[who];
