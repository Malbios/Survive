":F_to_C(INT|FLOAT <Fahrenheit>) => FLOAT <Celsius>";
"This verb converts Fahrenheit degrees to Celsius degrees.";
return (tofloat(args[1]) - 32.0) / 1.8;
