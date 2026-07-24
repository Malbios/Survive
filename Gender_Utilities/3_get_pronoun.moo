"get_pronoun(key,object) => pronoun corresponding to object.";
"key can be one of s,o,p,q,r,S,O,P,Q,R to refer to the pronoun properties relatively directly or it can be something of the form \"he/she\" or \"He/She\".";
"Next the object is checked for the desired pronoun property.  If that doesn't exist, we look at object.gender and infer the pronoun from the corresponding $gender_utils property.  If .gender doesn't exist or the object itself is invalid, we use the corresponding property on $player.";
{key, ?object = player} = args;
if (key[1] == ":")
  key = key[2..$];
endif
if (length(key) == 1 && (i = index("sopqrSOPQR", key, 1)))
  prop = this.pronouns[i];
else
  search = "$1:he$1:she$1:they$1:he/she$1:he/she/they$2:him$2:them$2:him/her$2:him/her/them$3:their$3:his/her$3:his/her/their$4:hers$4:theirs$4:his/hers$4:his/hers/theirs$5:himself$5:herself$5:themself$5:himself/herself$5:himself/herself/themself";
  i = index(search, ":" + key + "$");
  if (!i)
    return "";
  endif
  cap = strcmp("a", key) > 0;
  prop = this.pronouns[toint(search[i - 1]) + 5 * cap];
endif
if (!valid(object))
  return $player.(prop);
elseif (STR == typeof(p = `object.(prop) ! ANY'))
  return p;
elseif (STR == typeof(g = `object.gender ! ANY') && (i = g in this.genders))
  return this.(prop)[i];
else
  return $player.(prop);
endif
