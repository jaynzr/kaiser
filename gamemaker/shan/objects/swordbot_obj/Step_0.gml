/// @description Insert description here
// You can write your code in this editor

if object_exists(player_obj) {
	if distance_to_object(player_obj) < 35 {
	
		if attacked = true {
			atkcd += 1
		}
		else {
			atkcd -= 1
		}
	
		if atkcd <= 0 and attacked = false {
			sprite_index = swordbotatk_spr
			spd = 2
			attacked = true
		}
		else if atkcd >= 50 and attacked = true{
			sprite_index = swordbobot_spr
			spd = 4
			attacked = false
		}
	}
	else {
		if atkcd <= 49 {
			atkcd += 1
		}
		else if atkcd >= 50 {
			sprite_index = swordbobot_spr
			spd = 4
			attacked = false
		}
	}
		
	if damaged_time <= 3 {
		if distance_to_object(player_obj) < 150 {		
			move_towards_point(player_obj.x,player_obj.y,spd)
		}
		else {
			damaged_time = 3
		}
	}
	else {
		move_towards_point(instance_nearest(x,y,mobpipe_obj).x,instance_nearest(x,y,mobpipe_obj).y,spd)
}
}