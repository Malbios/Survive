":strip_chars(string,chars) => string with chars removed";
{subject, stripped} = args;
for i in [1..length(stripped)]
  subject = strsub(subject, stripped[i], "");
endfor
return subject;
