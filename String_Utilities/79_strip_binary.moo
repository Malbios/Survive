{decode} = args;
decoded = "";
for x in (decode_binary(decode))
  if (typeof(x) == STR)
    decoded = decoded + x;
  endif
endfor
return decoded;
