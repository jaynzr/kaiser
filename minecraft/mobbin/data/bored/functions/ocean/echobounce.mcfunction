execute at @s positioned ^ ^ ^20 as @e[distance=..20,type=!player,type=!armor_stand] at @s if block ~ ~ ~ water run scoreboard players set @s glow 5
execute at @s run playsound block.bell.use ambient @a ~ ~ ~
execute at @s run particle shriek 3 ~ ~ ~ 0 1 0 0 2
scoreboard players set @s echolocate 0