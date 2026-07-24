"This is the canonical doing-something-to-somebody message.";
"The corresponding property can either be";
"   string             msg for all occasions";
"   list of 2 strings  {we-are-there-msg,we-are-elsewhere-msg}";
m = this.(verb);
if (typeof(m) != LIST)
  return $string_utils:pronoun_sub(m);
elseif (this.location == dobj.location || length(m) < 2)
  return $string_utils:pronoun_sub(m[1]);
else
  return $string_utils:pronoun_sub(m[2]);
endif
