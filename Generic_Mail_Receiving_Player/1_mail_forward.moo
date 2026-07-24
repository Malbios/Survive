if (typeof(mf = this.(verb)) == STR)
  return $string_utils:pronoun_sub(mf, @args);
else
  return mf;
endif
