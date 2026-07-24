set_task_perms(caller_perms());
if (this:build_option("bi_create"))
  return $quota_utils:bi_create(@args);
else
  return $recycler:(verb)(@args);
endif
