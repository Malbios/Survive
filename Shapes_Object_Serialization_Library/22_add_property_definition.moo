{t, pn, pv, pi} = args;
p = ["Property" -> ["owner" -> pi[1], "perms" -> pi[2], "name" -> pn, "value" -> pv]];
t["Properties"] = {@t["Properties"], p};
return t;
