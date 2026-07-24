{who, @rest} = args;
if (valid(session = this:session_for(who)))
  return session:(verb)(@rest);
endif
