if (caller == this)
  {connection, @rest} = args;
  connection:end_negotiation();
endif
