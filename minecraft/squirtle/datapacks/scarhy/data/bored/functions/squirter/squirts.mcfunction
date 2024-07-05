execute as @a[tag=squirts] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Tags:["squirted"]}
execute as @a[tag=squirts] at @s run tp @e[tag=squirted] ~ ~1.5 ~ ~ ~
tag @a remove squirts