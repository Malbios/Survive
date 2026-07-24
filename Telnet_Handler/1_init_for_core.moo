if (caller_perms().wizard)
  "Clear all MSSP values that don't have verbs and reset to defaults.";
  default = {"family"};
  for x in (mapkeys(this.mssp_data))
    if ($object_utils:has_callable_verb(this, tostr("mssp_", x)))
      this.mssp_data[x] = 1;
    elseif (!(x in default))
      this.mssp_data[x] = $nothing;
    endif
  endfor
endif
