":ansi_option(name) => returns the value of the specified @ansi option";
if ((a = args[1]) == "escape")
  return (i = $list_utils:assoc(a, this.ansi_options)) ? i[2] | 0;
else
  return !!(a in this.ansi_options);
endif
