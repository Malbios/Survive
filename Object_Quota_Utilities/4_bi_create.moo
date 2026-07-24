"Calls built-in create.";
set_task_perms(caller_perms());
return `create(@args) ! ANY';
