return typeof(this.readers) != LIST || ((who = args[1]) in this.readers || (this:is_writable_by(who) || $mail_agent:sends_to(1, this, who)));
