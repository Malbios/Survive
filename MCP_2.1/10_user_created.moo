{who} = args;
if (listeners(caller))
  if ($recycler:valid(who.out_of_band_session))
    `who.out_of_band_session:finish() ! ANY';
  endif
  who.out_of_band_session = this:initialize_connection(who);
endif
