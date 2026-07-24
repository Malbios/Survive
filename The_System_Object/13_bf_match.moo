m = `match(@args) ! ANY';
return typeof(m) == ERR && $code_utils:dflag_on() ? raise(m) | m;
