/// @description Insert description here
// You can write your code in this editor
upmove = keyboard_check(ord("W"))
downmove = keyboard_check(ord("S"))
leftmove = keyboard_check(ord("A"))
rightmove = keyboard_check(ord("D"))

movey = (downmove - upmove) * spd
movex = (rightmove - leftmove) * spd

if place_meeting(x,y + movey,wall_obj) {
	movey = 0
}

if place_meeting(x + movex,y,wall_obj) {
	movex = 0
}

y += movey
x += movex


//shoot
if shootcd > 0 {
	shootcd -= 1
}

if inv_frames <= 0 {
	sprite_index = player_spr
	spd = 5
}
else {
	sprite_index = playerdmg_spr
	spd = 10
}

inv_frames -= 1


if global.schemcollected = 7 {
	room_goto_next()
}

if life = 0 {
	instance_destroy()
}