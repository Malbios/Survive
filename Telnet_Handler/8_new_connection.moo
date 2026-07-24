"Called by $sysobj:do_login_command().";
if (caller != $sysobj)
  raise(E_PERM);
endif
{who} = args;
if (this.mssp_active)
  "Notify the connection that MSSP is supported.";
  this:send(who, {this.commands["IAC"], this.commands["WILL"], this.commands["MSSP"]});
endif
