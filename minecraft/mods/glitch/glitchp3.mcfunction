execute at @s[team=blue] run effect give @e[distance=..5,team=!blue] instant_damage 1 0 true
execute at @s[team=red] run effect give @e[distance=..5,team=!red] instant_damage 1 0 true

execute at @s run effect give @s poison 2 5 true
#effect give @s regeneration 2 4 true
execute at @s run particle minecraft:dust_color_transition 2 .5 .3 1.3 1.549 .9 2 ~ ~ ~ 2 2 2 0 200

scoreboard players set @s power3cd 20