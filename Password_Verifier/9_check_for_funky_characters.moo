if (this:_is_funky_case(pwd = args[1]))
  return;
endif
alphabet = $string_utils.alphabet;
for i in [1..length(pwd)]
  if (!index(alphabet, pwd[i]))
    return;
  endif
endfor
return "At least one unusual capitalization and/or numeric or punctuation character is required.";
