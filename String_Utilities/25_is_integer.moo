"Usage:  is_numeric(string)";
"        is_integer(string)";
"Is string numeric (composed of one or more digits possibly preceded by a minus sign)? This won't catch floating points.";
"Return true or false";
return match(args[1], "^ *[-+]?[0-9]+ *$") ? 1 | 0;
