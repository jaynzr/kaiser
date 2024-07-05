execute as @e[tag=squirted] at @s run tp @s ^ ^ ^.1
execute at @e[tag=squirted] run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["coom"]}
execute at @e[tag=squirted] unless block ~ ~ ~ air run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["stick"]}
execute as @e[tag=squirted] if score @s squirtime matches 198.. at @e[tag=coom] run particle dust 0.98 0.98 0.98 1 ~ ~ ~ 0 0 0 0 1 normal
scoreboard players add @e[tag=squirted] squirtime 1

execute as @e[tag=squirted] if score @s squirtime matches ..199 run function bored:squirter/squirtshot
execute as @e[tag=squirted] if score @s squirtime matches 200.. run kill @s
execute at @e[tag=squirted] unless block ~ ~ ~ air run kill @s