if (caller != this)
  set_task_perms(valid(caller_perms()) ? caller_perms() | player);
endif
use = this.mail_identity;
if (valid(use) && use != this)
  return use:(verb)(@args);
else
  return pass(@args);
endif
