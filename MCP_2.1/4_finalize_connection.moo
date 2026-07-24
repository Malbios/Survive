{con} = args;
if (caller == con)
  this:destroy_session(con);
endif
