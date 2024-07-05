function bored:shepherd/shepherd
function bored:cloner/cloner
function bored:morphousqueen/morphousqueen


function bored:ocean/ocean


execute as @e at @s if block ~ ~1 ~ water run effect give @s darkness 2 10 true
execute as @e at @s if block ~ ~1 ~ light[waterlogged=true] run effect give @s darkness 2 10 true
execute as @a at @s if block ~ ~1 ~ light[waterlogged=true] if score @s height matches ..47 run effect give @s blindness 2 10 true
#execute as @e at @s if biome ~ ~ ~ #is_deep_ocean if block ~ ~1 ~ water run effect give @s blindness 2 10 true

#execute as @e at @s unless block ~ ~1 ~ water unless entity @e[type=warden,distance=..30] run effect clear @s darkness


execute store result score #timetrack time run time query daytime


execute as @e[type=squid] at @s on origin if biome ~ ~ ~ #is_deep_ocean run summon glow_squid
execute as @e[type=squid] at @s on origin if biome ~ ~ ~ #is_deep_ocean run tp @s ~ ~-10000 ~
execute as @e[type=squid] at @s on origin if biome ~ ~ ~ #is_deep_ocean run kill @s

scoreboard players remove @e glow 1
scoreboard players remove @e sight 1
scoreboard players remove @e inv 1


execute as @e if score @s inv matches 1.. run effect give @s invisibility 2 1 true
execute as @e unless score @s inv matches 1.. run effect clear @s invisibility

execute as @e if score @s glow matches 1.. run effect give @s glowing 2 1 true
execute as @e unless score @s glow matches 1.. run effect clear @s glowing


scoreboard players set @a hurt 0

execute as @e[tag=stationary] run data merge entity @s {NoAI:1b}
execute as @e[tag=!stationary] run data merge entity @s {NoAI:0b}

execute as @e run scoreboard players add @s justspawm 1
execute as @e if score @s justspawm matches 1 run tag @s add spawned
execute as @e unless score @s justspawm matches 1 run tag @s remove spawned


execute as @e store result score @s height run data get entity @s Pos[1]