execute as @s at @s if score @s power1 matches 1.. if score @s shift matches ..0 run function bored:cards/cardplace
execute as @s at @s if score @s power1 matches 1.. if score @s shift matches 1.. run function bored:cards/trigger
execute as @s at @s if score @s power2 matches 1.. if score @s power2cd matches ..0 run function bored:cards/cardp2
execute as @s at @s if score @s power3 matches 1.. run function bored:cards/cardp3
execute as @s at @s if score @s ult matches 1.. if score @s ultcd matches ..0 run function bored:cards/cardult

function bored:cards/cardbomb
function bored:cards/carddetonatepart


scoreboard players add @e power1last 0
scoreboard players add @e power2last 0
scoreboard players add @e ultlast 0

execute at @e[tag=cardshoot] run particle dust 0.561 0.043 0.043 1 ~ ~ ~
execute at @e[tag=carddetonate] run particle dust .2 .5 1 1 ~ ~ ~

execute as @e[tag=cardshoot] at @s run tp @s ^ ^ ^.6
execute as @e[tag=carddetonate,tag=!triggered] at @s if score @s power2last matches ..60 if block ^ ^ ^.6 air run tp @s ^ ^ ^.6
execute as @e[tag=carddetonate,tag=!triggered] at @s unless score @s power2last matches ..60 run tag @s add triggered
execute as @e[tag=carddetonate,tag=!triggered] at @s unless block ^ ^ ^.6 air run tag @s add triggered

execute as @e[tag=carddetonate,tag=triggered] at @s if block ~ ~-.6 ~ air run tp @s ~ ~-.6 ~

execute as @e[tag=carddetonate,tag=triggered] at @s unless block ^ ^ ^.6 air run playsound block.conduit.ambient ambient @a




execute as @e[tag=cardshoot,team=red] at @s unless block ~ ~ ~ air run summon armor_stand ~ ~ ~ {Team:"red",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["cardbomb"],Small:1b}

execute as @e[tag=cardshoot,team=blue] at @s unless block ~ ~ ~ air run summon armor_stand ~ ~ ~ {Team:"blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["cardbomb"],Small:1b}

execute as @e[tag=cardshoot] at @s unless block ~ ~ ~ air run kill @s

execute as @e[tag=carddetonate,tag=!triggered] at @s run scoreboard players set @s power1last 0

execute as @e[tag=crystalspd] run effect give @s jump_boost 1 5 true
execute as @e[tag=crystalspd] run effect give @s speed 1 3 true
execute as @e[tag=crystalspd] if score @s jump matches 1.. run effect give @s slow_falling 1 1 true

execute as @e[tag=crystalspd] at @s if score @s sprint matches 1.. unless block ~ ~-.1 ~ air run particle totem_of_undying ~ ~1 ~ 0.4 1 0.4 .4 10
execute as @e[tag=crystalspd,nbt={active_effects:[{id:"minecraft:slow_falling"}]}] at @s run particle dust_color_transition 0 1 1 1 .2 1.5 2 ~ ~1 ~ .4 1 .4 0 2
execute as @e[tag=crystalspd] at @s run particle dust_color_transition .1 2 1 1 .1 2.5 2 ~ ~.1 ~ .7 0 .7 0 4



execute as @e[tag=carddetonate,tag=triggered] at @s if score @s power1last matches ..21 run tp @s ~ ~ ~ ~18 0



scoreboard players add @a[tag=crystalspd] crystallast 1
execute as @a[tag=crystalspd] if score @s crystallast matches 400.. run tag @s remove crystalspd


execute as @e[tag=carddetonate,tag=triggered] at @s unless score @s power1last matches ..21 run kill @s

execute as @a[tag=cardencore,team=blue] run scoreboard players remove @e[tag=cardecho,team=blue] power1last 1

execute as @a[tag=cardencore,team=red] run scoreboard players remove @e[tag=cardecho,team=blue] power1last 1

execute as @a[tag=cardencore] if score @s encoretime matches 1.. if score @s ultlast matches 70.. run function bored:cards/encore
#execute as @a[tag=cardencore,team=blue] unless score @s encoretime matches 1.. run kill @e[tag=cardecho,team=blue]
execute as @a[tag=cardencore] unless score @s encoretime matches 1.. run tag @s remove cardencore

execute as @e[tag=cardecho] if score @s power1last matches 1200.. run kill @s

execute as @e[tag=cardshoot] at @s unless score @s power1last matches ..40 run tp @s ~ ~-.9 ~



scoreboard players set @a[tag=crystalspd] power2cd 60