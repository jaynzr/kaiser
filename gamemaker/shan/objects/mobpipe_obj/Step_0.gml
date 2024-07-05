/// @description Insert description here
// You can write your code if 
if global.botamt < 5 {
	spawntime += irandom_range(3,12)
}

if spawntime > 200 and global.botamt < 10 and distance_to_object(player_obj) < 100 {
	instance_create_layer(x,y,"Instances",swordbot_obj)
	global.botamt += 1
	spawntime = 0
}