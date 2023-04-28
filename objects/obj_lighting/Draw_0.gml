_exists = surface_exists(surf);
if(_exists == false)
{
	_cw = camera_get_view_width(view_camera[0]);
	
	_ch = camera_get_view_height(view_camera[0]);
	
	surf = surface_create(_cw, _ch,);
	
	surface_set_target(surf);
	
	draw_set_color(c_white);
	draw_set_alpha(0);
	draw_rectangle(0, 0, _cw, _ch, true);
	surface_reset_target();
	
}
else
{
	var _cw = camera_get_view_width(view_camera[0]);
	
	var _ch = camera_get_view_height(view_camera[0]);
	
	var _cx = camera_get_view_x(view_camera[0]);
	
	var _cy = camera_get_view_y(view_camera[0]);
	
	
	surface_set_target(surf);
	
	draw_set_color(c_black);
	draw_set_alpha(0.8);
	
	draw_rectangle(0, 0, _cw, _ch, false);
	surface_reset_target();
	
	gpu_set_blendenable(bm_subtract);
	
	with(obj_enemy_parent)
	{
		_cx = camera_get_view_x(view_camera[0]);
	
		_cy = camera_get_view_y(view_camera[0]);
		gpu_set_blendenable(bm_normal);
		
		draw_set_color(c_white);
		draw_set_alpha(1);
		surface_reset_target();
		
		draw_surface(self.surf, _cx, _cy);
		
		_sw = sprite_width/2;
		_sh = sprite_height/2;
		
		switch(object_index)
		{
			case obj_baddie:
				draw_sprite_ext(spr_hero_light, 0, _cx, _cy, 0.75-_sw, 0.75-_sh, 0, c_white, 1);
			break;
			
			case obj_bat :
				draw_sprite_ext(spr_hero_light, 0, _cx, _cy, 0.3, 0.3, 0, c_white, 1);
			
		}
	}
	
	
}

                