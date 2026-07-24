":K_to_C (INT|FLOAT <Kelvin>) => FLOAT <Celcius>";
"This verb converts Kelvin degrees to Celcius degrees.";
return tofloat(args[1]) - 273.0;
