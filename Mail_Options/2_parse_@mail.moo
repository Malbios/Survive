"... we'll take anything...";
raw = args[2];
if (raw == 1)
  "...+@mail => @mailo=new";
  return {args[1], "new"};
else
  return args[1..2];
endif
