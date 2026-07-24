"...redirects verbs to $ansi_utils...";
if (verb == "redirect_ansi")
elseif (valid(au = $ansi_utils))
  return au:(verb)(@args);
else
  return this:(verb + "(noansi)")(@args);
endif
