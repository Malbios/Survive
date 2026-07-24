for dude in (this:contents())
  try
    dude:tell(@args);
  except (ANY)
    "Just ignore the dude with the stupid :tell";
    continue dude;
  endtry
endfor
