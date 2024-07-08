
execute as @e[tag=cardbomb] at @s unless block ~ ~ ~ air run tp @s ~ ~.1 ~

execute at @e[tag=cardbomb] run particle dust 0 1 0 2 ^ ^1 ^ 0 2 0 0 10
#execute at @e[tag=cardbomb,tag=active] run particle dust 0 1 0.584 2 ^ ^1 ^ 0 2 0 0 10


execute at @e[tag=cardbomb] run particle dust 0 1 0.584 2 ^ ^.7 ^-10
execute at @e[tag=cardbomb] run particle dust 0 1 0.584 2 ^ ^.7 ^10

execute at @e[tag=cardecho] run particle dust 0 0.941 0.863 2 ^ ^.7 ^ 0 .5 0 0 4

scoreboard players add @e[tag=cardbomb] power1last 0
scoreboard players set @e[tag=cardbomb,tag=!active] power1last 0

execute as @e[tag=cardbomb,tag=active] at @s if score @s power1last matches 1 run particle portal ~ ~1 ~ 0 0 0 10 1000

execute as @e[tag=cardbomb] at @s run tp @s ~ ~ ~ ~3.27 0
execute as @e[tag=cardbomb,tag=active] at @s if score @s power1last matches 55 run particle totem_of_undying ~ ~ ~ 0 0 0 3 200

#execute at @e[tag=cardbomb,tag=active] run playsound ambient.crimson_forest.mood ambient @a

execute as @e[tag=cardbomb,tag=active,team=blue] at @s if score @s power1last matches 55 run tag @e[tag=cardbomb,team=blue,distance=..10] add active

execute as @e[tag=cardbomb,tag=active,team=blue,tag=!echoed] at @s if score @s power1last matches 55 at @e[tag=cardecho,distance=..10] run summon armor_stand ~ ~ ~ {Team:"blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["cardbomb","active","echoed"],Small:1b}

#execute as @e[tag=cardbomb,tag=active,team=blue,tag=!echoed] at @s if score @s power1last matches 55 as @e[tag=cardecho,distance=..10] run kill @s

execute as @e[tag=cardbomb,tag=active,team=blue,tag=!echoed] at @s if score @s power1last matches 55 run summon armor_stand ~ ~ ~ {Team:"blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["cardecho"]}

#execute as @e[tag=cardbomb,tag=active,team=blue] at @s if score @s power1last matches 55 run particle dust 0 1 0.949 1 ~ ~ ~ 4 4 4 0 550

execute as @e[tag=cardbomb,tag=active,team=blue] at @s if score @s power1last matches 55 as @e[team=!blue,distance=..10] at @s run particle dust 0 1 0.702 1 ~ ~1 ~ .2 1 .2 0 100
#execute as @e[tag=cardbomb,tag=active,team=blue] at @s if score @s power1last matches 55 as @e[team=!blue,distance=..10] run damage @s 8 freeze


execute as @e[tag=cardbomb,tag=active,team=red] at @s if score @s power1last matches 55 run tag @e[tag=cardbomb,team=red,distance=..10] add active

execute as @e[tag=cardbomb,tag=active,team=red,tag=!echoed] at @s if score @s power1last matches 55 at @e[tag=cardecho,distance=..10] run summon armor_stand ~ ~ ~ {Team:"red",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["cardbomb","active","echoed"],Small:1b}

#execute as @e[tag=cardbomb,tag=active,team=red,tag=!echoed] at @s if score @s power1last matches 55 as @e[tag=cardecho,distance=..10] run kill @s

execute as @e[tag=cardbomb,tag=active,team=red,tag=!echoed] at @s if score @s power1last matches 55 run summon armor_stand ~ ~ ~ {Team:"red",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["cardecho"]}

#execute as @e[tag=cardbomb,tag=active,team=red] at @s if score @s power1last matches 55 run particle dust 0 1 0.949 1 ~ ~ ~ 4 4 4 0 550

execute as @e[tag=cardbomb,tag=active,team=red] at @s if score @s power1last matches 55 as @e[team=!red,distance=..10] at @s run particle dust 0 1 0.702 1 ~ ~1 ~ .2 1 .2 0 100
#execute as @e[tag=cardbomb,tag=active,team=red] at @s if score @s power1last matches 55 as @e[team=!red,distance=..10] run damage @s 8 freeze


scoreboard players add @e[tag=cardbomb] power1last 0
scoreboard players set @e[tag=cardbomb,tag=!active] power1last 0

execute as @e[tag=cardbomb,tag=active] at @s unless score @s power1last matches ..55 run kill @s

execute as @e[tag=cardbomb,team=blue] at @s if entity @e[tag=carddetonate,tag=triggered,distance=..4,team=blue] run tag @s add active

execute as @e[tag=cardbomb,team=red] at @s if entity @e[tag=carddetonate,tag=triggered,distance=..4,team=red] run tag @s add active