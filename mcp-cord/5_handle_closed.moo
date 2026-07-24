{session, id, @rest} = args;
if (caller == this)
  $mcp.cord:mcp_closed(id);
endif
