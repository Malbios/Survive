if (valid(au = $ansi_utils) && au.active)
  return au:(verb)(@args);
else
  return this:(verb + "(noansi)")(@args);
endif
