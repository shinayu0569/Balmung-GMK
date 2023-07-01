/// @description Setup

camera = view_camera[0]
xborder = round(view_wport[0]/7)
yborder = round(view_hport[0]/7)
csp = 0.05

camera_set_view_border(camera,xborder,yborder)

camera_set_view_pos(view_camera[0],x,y)
