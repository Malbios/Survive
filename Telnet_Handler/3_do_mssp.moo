":do_mssp(LIST <telnet commands>) => INT <successfully handled>";
"Implements the MUD Server Status Protocol via telnet.";
"'player' is sent binary data and this verb returns 1 if successful, 0 if not.";
"See 'HELP MSSP' for details on how to populate MSSP variables.";
if (caller != this)
  raise(E_PERM);
endif
{telnet_commands} = args;
MSSP_VAR = this.commands["MSSP_VAR"];
MSSP_VAL = this.commands["MSSP_VAL"];
mssp = {this.commands["IAC"], this.commands["SB"], this.commands["MSSP"]};
mssp_data = this:_mssp_data();
for value, key in (mssp_data)
  mssp = {@mssp, MSSP_VAR, key, MSSP_VAL, value};
endfor
mssp = {@mssp, this.commands["IAC"], this.commands["SE"]};
return this:send(player, mssp);
