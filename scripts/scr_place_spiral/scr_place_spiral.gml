
function Scr_place_spiral(argument0, argument1, argument2) 
{
	if (!place_meeting(argument0, argument1, argument2))
	{
	    x = argument0; 
		y = argument1; 
		return true;
	}
	else
	{
		var state = 0;
		var xx = 1; var yy = 0;
		var xxx = 1; var  yyy = 0;
		var xamm = 1; var yamm = 1;
	    while(place_meeting(argument0 + xx, argument1 + yy, argument2))
		{
	        if (xx < xxx)
			{
				xx += 1;
	        }
			else
			{
	            if (xx > xxx)
				{
					xx -= 1;
				}
			}
	        if (yy < yyy)
			{
				yy += 1;
	        }
			else
			{
	            if (yy > yyy)
				{
					yy -= 1;
				}
			}
	        if ((xx = xxx) & (yy = yyy))
			{
	            if (state == 0)
				{
	                xxx -= xamm;
	                yyy += yamm;
	                state = 1;
	            }
				else
				{
	                if (state == 1)
					{
	                    xxx -= xamm;
	                    yyy -= yamm;
	                    state = 2;
	                }
					else
					{
	                    if (state == 2)
						{
	                        xxx += xamm;
	                        yyy -= yamm;
	                        state = 3;
	                    }
						else
						{
	                        if (state = 3)
							{
	                            xamm += 1;
	                            xxx += xamm;
	                            yyy += yamm;
	                            yamm += 1;
	                            state = 0;
							}
						}
					}
				}
			}
		}
	}
	x = argument0 + xx; 
	y = argument1 + yy; 
	return true;
}
