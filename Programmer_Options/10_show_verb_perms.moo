if (value = this:get(@args))
  return {value, {tostr("Default permissions for @verb:  ", value)}};
else
  return {0, {"Default permissions for @verb:  rd"}};
endif
