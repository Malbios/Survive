":range(start,end) => sequence corresponding to [start..end] range";
return (start = args[1]) <= (end = args[2]) ? {start, end + 1} | {};
