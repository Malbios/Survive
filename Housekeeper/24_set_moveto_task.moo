"sets $housekeeper.moveto_task to the current task_id() so player:moveto's can check for validity.";
if (caller != this)
  return E_PERM;
endif
this.moveto_task = task_id();
