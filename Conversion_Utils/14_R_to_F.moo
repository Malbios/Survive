":R_to_F (INT|FLOAT <Rankine>) => FLOAT <Fahrenheit>";
"This verb converts Rankine degrees to Fahrenheit degrees.";
return tofloat(args[1]) - 459.67;
