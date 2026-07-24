":C_to_F(INT|FLOAT <Celsius>) => FLOAT <Fahrenheit>";
"This verb converts Celsius degrees to Fahrenheit degrees.";
return tofloat(args[1]) * 1.8 + 32.0;
