{who, what, name} = args;
return who == verb_info(what, name)[1] || who.wizard;
