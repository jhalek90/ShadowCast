/// @description /////////////////////////////////////////////////////////////////
//scr_box_draw_shadow(light_x,light_y,size,max_draw_distance)
//draws simple shadows for a point light, from square objects
//by: Wubs
//http://wubsgames.com
//
//This script works by drawing shadows from the corner of box shaped sprites.
//The object must have its sprite orign centered
//
////////////////////////////////////////////////////////////////////
var _xx = argument0//light x
var _yy = argument1//light y
var _size = argument2 //block half size (sprite_width/2)
var _l = argument3 //shadow max distance
var _d = 0 //direction to point light

var _x1=x-_size//The following vars are used to store points for drawing polygons.
var _x2=x+_size
var _y1=y-_size
var _y2=y+_size
var _xd1=0
var _yd1=0
var _xd2=0
var _yd2=0
var _xd3=0
var _yd3=0
var _xd4=0
var _yd4=0

if ((_yy>=_y1)and(_xx<=_x1))//store points for drawing 
    {
    _d=point_direction(_xx,_yy,_x1,_y1)
    _xd1=_x1
    _yd1=_y1
    _xd2=_x1+lengthdir_x(_l,_d)
    _yd2=_y1+lengthdir_y(_l,_d)
    }

if ((_yy<=_y1)and(_xx<=_x2))
    {
    _d=point_direction(_xx,_yy,_x2,_y1)
    _xd1=_x2
    _yd1=_y1
    _xd2=_x2+lengthdir_x(_l,_d)
    _yd2=_y1+lengthdir_y(_l,_d)
    }

if ((_yy<=_y2)and(_xx>=_x2))
    {
    _d=point_direction(_xx,_yy,_x2,_y2)
    _xd1=_x2
    _yd1=_y2
    _xd2=_x2+lengthdir_x(_l,_d)
    _yd2=_y2+lengthdir_y(_l,_d)
    }
    
if ((_yy>=_y2)and(_xx>=_x1))
    {
    _d=point_direction(_xx,_yy,_x1,_y2)
    _xd1=_x1
    _yd1=_y2
    _xd2=_x1+lengthdir_x(_l,_d)
    _yd2=_y2+lengthdir_y(_l,_d)
    }

if ((_yy<=_y1)and(_xx>=_x1))
    {
    _d=point_direction(_xx,_yy,_x1,_y1)
    _xd3=_x1
    _yd3=_y1
    _xd4=_x1+lengthdir_x(_l,_d)
    _yd4=_y1+lengthdir_y(_l,_d)
    }

if ((_yy>=_y1)and(_xx>=_x2))
    {
    _d=point_direction(_xx,_yy,_x2,_y1)
    _xd3=_x2
    _yd3=_y1
    _xd4=_x2+lengthdir_x(_l,_d)
    _yd4=_y1+lengthdir_y(_l,_d)
    }

if ((_yy>=_y2)and(_xx<=_x2))
    {
    _d=point_direction(_xx,_yy,_x2,_y2)
    _xd3=_x2
    _yd3=_y2
    _xd4=_x2+lengthdir_x(_l,_d)
    _yd4=_y2+lengthdir_y(_l,_d)
    }
    
if ((_yy<=_y2)and(_xx<=_x1))
    {
    _d=point_direction(_xx,_yy,_x1,_y2)
    _xd3=_x1
    _yd3=_y2
    _xd4=_x1+lengthdir_x(_l,_d)
    _yd4=_y2+lengthdir_y(_l,_d)
    }

draw_primitive_begin(pr_trianglelist)//draw the primative
draw_vertex(_xd1,_yd1)
draw_vertex(_xd2,_yd2)
draw_vertex(_xd3,_yd3)
draw_vertex(_xd2,_yd2)
draw_vertex(_xd3,_yd3)
draw_vertex(_xd4,_yd4)
draw_primitive_end()
