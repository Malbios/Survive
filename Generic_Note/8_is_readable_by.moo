key = this.encryption_key;
return key == 0 || $lock_utils:eval_key(key, args[1]);
