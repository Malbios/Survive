if (caller_perms().wizard)
  this.reserved_patterns = {};
  this.last_mail_time = 0;
  this.time_collisions = {0, 0};
  pass(@args);
endif
