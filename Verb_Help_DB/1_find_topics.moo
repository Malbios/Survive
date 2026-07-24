if ($code_utils:parse_verbref(what = args[1]))
  "... hey wow, I found it!...";
  return {what};
else
  return {};
endif
