object = args[1];
if (is_player(object) && object.location == this)
  player = object;
  this:look_self(player.brief);
endif
if (object == this.blessed_object)
  this.blessed_object = #-1;
endif
