{message} = args;
if ($object_utils:has_callable_verb(this, vname = "handle_" + message))
  return vname;
else
  return 0;
endif
