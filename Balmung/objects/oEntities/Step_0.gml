global.tiles = layer_tilemap_get_id("Tiles_collision")

depth = -y

move_and_collide(xsp,ysp,oCol_par)

if sign(xsp) != 0 begin
	image_xscale = sign(xsp)
end

#region Colisão
	
	//Down Collision
	if tilemap_get_at_pixel(global.tiles,x,bbox_bottom + ysp) != 0{
		y = round(y)
		while tilemap_get_at_pixel(global.tiles,x,bbox_bottom + ysp) = 0{
			y += 1
		}
		while tilemap_get_at_pixel(global.tiles,x,bbox_bottom + ysp) != 0{
			y -= 1
		}
		ysp = 0
	}
	
	//Up Collision
	if tilemap_get_at_pixel(global.tiles,x,bbox_top + ysp) != 0{
		y = round(y)
		while tilemap_get_at_pixel(global.tiles,x,bbox_top + ysp) = 0{
			y -= 1
		}
		while tilemap_get_at_pixel(global.tiles,x,bbox_top + ysp) != 0{
			y += 1
		}
		ysp = 0
	}
	//Right Collision
	if tilemap_get_at_pixel(global.tiles,bbox_right + xsp,y) != 0{
		x = round(x)
		while tilemap_get_at_pixel(global.tiles,bbox_right,y) = 0{
			x += 1
		}
		while tilemap_get_at_pixel(global.tiles,bbox_right,y) != 0{
			x -= 1
		}
		xsp = 0
	}
	
	//Left Collision
	if tilemap_get_at_pixel(global.tiles,bbox_left + xsp,y) != 0{
		x = round(x)
		while tilemap_get_at_pixel(global.tiles,bbox_left,y) = 0{
			x -= 1
		}
		while tilemap_get_at_pixel(global.tiles,bbox_left,y) != 0{
			x += 1
		}
		xsp = 0
	}
#endregion
