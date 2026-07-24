{prefix, message} = args;
if (message)
  message = prefix + "-" + message;
else
  message = prefix;
endif
return message;
