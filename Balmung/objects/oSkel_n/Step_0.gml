
a_zone = distance_to_object(oPlayer)

#region Moving
#region checking Attention zone
if a_zone <= 60{
	attention = true
	
	if a_zone < 32{
		attack = true
	}
	
} else {
	attention = false
	attack = false
}
#endregion

while (a_zone <= 70 and attention = false){
	if alarm[0] <= 0{
		alarm[0] = 0.4 * 60
	}
}
#endregion
