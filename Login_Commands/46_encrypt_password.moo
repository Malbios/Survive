{password} = args;
salt = random_bytes(20);
return argon2(password, salt, this.argon2["iterations"], this.argon2["memory"], this.argon2["threads"]);
