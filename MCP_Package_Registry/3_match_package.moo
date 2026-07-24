{name} = args;
if (idx = name in this.package_names)
  return this.packages[idx];
else
  return $failed_match;
endif
