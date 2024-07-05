scoreboard players add @e[tag=plaentspore] plaentsporelast 1

execute as @e[tag=plaentspore] at @s unless entity @e[tag=plaent,distance=..28] run scoreboard players set @s plaentsporelast 200

execute as @e[tag=plaentspore] if score @s plaentsporelast matches 100.. run data merge entity @s {NoAI:1b}
execute as @e[tag=plaentspore] at @s if score @s plaentsporelast matches 100.. run tp @s ~ ~-.1 ~
execute as @e[tag=plaentspore] at @s if score @s plaentsporelast matches 100.. unless block ~ ~ ~ air at @e[tag=plaentroot,distance=..2,limit=4,sort=nearest] run summon zombie ~ ~-2.2 ~ {Tags:["plaentzombie","explosionzombie"],ArmorItems:[{},{},{},{id:"minecraft:zombie_head",Count:1}],NoGravity:0b}
execute as @e[tag=plaentspore] at @s if score @s plaentsporelast matches 100.. unless block ~ ~ ~ air run kill @s

effect give @e[tag=explosionzombie] speed 1 2 true
effect give @e[tag=explosionzombie] weakness 1 100 true

execute at @e[tag=explosionzombie] if entity @a[distance=..2] as @a[distance=..5] run damage @s 2 explosion
execute as @e[tag=explosionzombie] at @s if entity @a[distance=..2] run particle crimson_spore ~ ~1 ~ 0 0 0 5 100
execute as @e[tag=explosionzombie] at @s if entity @a[distance=..2] run tp @s ~ ~-1000 ~
execute as @e[tag=explosionzombie] at @s if entity @a[distance=..2] run kill @s