function bored:squirter/squirts
function bored:squirter/squirtshot

execute as @e[tag=coom] at @s run tp @s ~ ~ ~
scoreboard players add @e[tag=coom] coomtime 1
execute as @e[tag=coom] at @s if score @s coomtime matches 20.. run effect give @e[type=!armor_stand,tag=!squirter,distance=..3] instant_damage 1 0 true
execute as @e[tag=coom] at @s if score @s coomtime matches 20.. run particle dust 0.98 0.98 0.98 1 ~ ~ ~ 1 1 1 0 3
execute as @e[tag=stick] at @s run particle dust 0.98 0.98 0.98 1 ~ ~1 ~ 1 0 1 0 1
execute at @e[tag=stick] run effect give @e[tag=!squirter] slowness 1 3 true

execute as @e[tag=coom] at @s if score @s coomtime matches 20.. run kill @s