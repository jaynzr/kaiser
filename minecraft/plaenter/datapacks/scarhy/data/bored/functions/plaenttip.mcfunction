execute at @e[tag=plaenttip] if block ^ ^ ^.1 short_grass run setblock ^ ^ ^.1 air
execute at @e[tag=plaenttip] if block ^ ^ ^.1 tall_grass run setblock ^ ^ ^.1 air

scoreboard players add @e[tag=plaenttip] plaentrootsummon 1
scoreboard players remove @a roothitcd 1

execute as @a at @s if entity @e[tag=plaenttip,distance=..3] if score @s roothit matches ..300 if score @s roothitcd matches ..0 run scoreboard players add @s roothit 200
execute as @a at @s if entity @e[tag=plaenttip,distance=..3] if score @s roothit matches ..300 if score @s roothitcd matches ..0 run scoreboard players set @s roothitcd 70

execute at @e[tag=plaenttip] run particle totem_of_undying ~ ~ ~ .7 0 .7 0 1

execute at @e[tag=plaenttip] run effect give @e[distance=..3,type=!zombie] slowness 1 1 true

execute as @e[tag=plaenttip] at @s if block ^ ^-1 ^ air run tp @s ~ ~-1 ~
execute as @e[tag=plaenttip] at @s unless block ^ ^ ^.1 air unless block ^ ^1 ^.1 air run kill @s
execute as @e[tag=plaenttip] at @s if block ^ ^1 ^.1 air unless block ^ ^ ^.1 air run tp @s ~ ~1 ~

execute as @e[tag=plaenttip] at @s if score @s plaentrootsummon matches 20.. run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["plaentroot"]}
execute as @e[tag=plaenttip] at @s if score @s plaentrootsummon matches 20.. run scoreboard players set @s plaentrootsummon 0


execute as @e[tag=plaenttip] at @s run tp @s ^ ^ ^.1
execute as @e[tag=plaenttip] run scoreboard players add @s plaenttiptime 1
execute as @e[tag=plaenttip] at @s if score @s plaenttiptime matches 280.. run particle mycelium ~ ~1 ~ 1 1 1 0 200
execute as @e[tag=plaenttip] if score @s plaenttiptime matches 280.. run kill @s

execute as @a if score @s roothit matches 301.. run scoreboard players set @s roothit 301

#execute as @e[tag=plaenttip] at @s run tp @s ~ ~ ~ ~.1 ~