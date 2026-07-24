{?parents = {}} = args;
o = ["Attributes" -> [], "Values" -> [], "Properties" -> {}, "Verbs" -> {}];
if (parents)
  o["Attributes"]["parents"] = ["Value" -> ["value" -> parents]];
endif
return o;
