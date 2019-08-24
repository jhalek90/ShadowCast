draw_set_color(make_color_hsv(0,0,20))//dark grey for demo.
with obj_shadowcast_wall
    {
    scr_box_draw_shadow(mouse_x,mouse_y,32,25600)
    }
    
draw_set_color(c_white)
with obj_shadowcast_wall
    {
    draw_self()
    }



