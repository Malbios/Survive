msgtree = this.messages;
this.last_msg_date = msgtree && this:_message_hdr(@this._mgr:find_nth(msgtree, msgtree[2]))[1] || 0;
