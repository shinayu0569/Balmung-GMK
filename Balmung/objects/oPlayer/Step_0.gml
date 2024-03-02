//inputs --
key = {
	right	: keyboard_check(vk_right),
	left	: keyboard_check(vk_left),
	up		: keyboard_check(vk_up),
	down	: keyboard_check(vk_down),
	atk		: keyboard_check_pressed(ord("X")),
	def		: keyboard_check_pressed(ord("Z")),
	map		: keyboard_check_pressed(ord("S")),
}

event_inherited();
#region Movimentação & Colisão
if sword = 0{
	xsp = spd * (key.right - key.left)
	ysp = spd * (key.down - key.up)
} else {
	xsp = 0
	ysp = 0
}

if xsp != 0 or ysp != 0{
	sprite_index = sPlayer_m
} else {
	sprite_index = sPlayer_i
}
#endregion

#region Attack & Defense
if key.atk and sword = 0{
	
	switch (direction) {
	    case 0:
			
	        break;
	    case 45:
			
	        break;
	    case 90:
			
	        break;
	    case 135:
			
	        break;
	    case 180:
			
	        break;
	    case 225:
			
	        break;
	    case 270:
			
	        break;
	    case 315:
			
	        break;
	}
	
	instance_create_depth(x_creation,y_creation,depth,oSword)
	sword = 1
}
#endregion

#region Debug
var map_id = "Assets_1"
var visibility = layer_get_visible(map_id)

if keyboard_check_pressed(ord("L")){
	switch(visibility)
	{
		case 0:
			layer_set_visible(map_id,1)
		break
		case 1:
			layer_set_visible(map_id,0)
		break
	}
}
#endregion
