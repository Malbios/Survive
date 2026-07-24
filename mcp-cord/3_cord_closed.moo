cord = caller;
session = cord.session;
this:send_closed(session, tostr(cord.id));
