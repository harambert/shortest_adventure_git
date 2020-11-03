//for room transitions

if trans > 0 and mode == "open"
{
	trans -= 0.02;
}

else if trans < 1 and mode == "close"
{
	trans += 0.02;
}

else if trans == 1 and mode == "close"
{
	room_goto_next();
}

//for Title

if transTitle < 1 and modeTitle == "open"
{
	transTitle += 0.02;
}
else if transTitle > 0 and modeTitle == "close"
{
	transTitle -= 0.02;
}