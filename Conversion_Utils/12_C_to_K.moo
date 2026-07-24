":C_to_K (INT|FLOAT <Celcius>) => FLOAT <Kelvin>";
"This verb converts Celcius degrees to Kelvin degrees.";
return tofloat(args[1]) + 273.0;
