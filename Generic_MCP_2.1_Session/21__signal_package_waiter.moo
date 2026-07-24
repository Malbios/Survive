{?package = $nothing, value} = args;
if (caller == this)
  all = package == $nothing;
  for keyval in (this.package_waiters)
    {pkg, tid} = keyval;
    if (all || pkg == package)
      `resume(tid, value) ! ANY';
    endif
  endfor
endif
