"This verb returns messages that go only to you. You don't need to have your name tacked on to the beginning of these. Heh.";
msg = this.(verb);
if (msg && length(args) >= 3)
  msg = this:msg_sub(msg, @args);
endif
return msg;
