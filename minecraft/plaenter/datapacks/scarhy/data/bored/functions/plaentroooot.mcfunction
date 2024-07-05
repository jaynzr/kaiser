execute at @e[type=!armor_stand,type=!zombie,type=!item,type=!experience_orb,type=!experience_bottle] at @e[tag=plaentroot,distance=..3] run particle infested ~ ~.1 ~ .6 0 .6 0 1
execute at @e[tag=plaentroot] run effect give @e[distance=..1,type=!zombie,type=!player] wither 4 3 true

execute as @a at @s if entity @e[tag=plaentroot,distance=..3] run scoreboard players add @s roothit 1

scoreboard players add @e[tag=plaentroot] rootlast 1
execute as @e[tag=plaentroot] if score @s rootlast matches 100.. run kill @s