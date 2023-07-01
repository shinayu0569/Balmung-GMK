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
}

if xsp != 0 or ysp != 0{
	sprite_index = sPlayer_m
} else {
	sprite_index = sPlayer_i
}
#endregion

#region Attack & Defense
if key.atk and sword = 0{
	instance_create_depth(x,y,depth,oSword)
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
