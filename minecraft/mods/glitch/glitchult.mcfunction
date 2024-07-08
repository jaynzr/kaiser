tag @s add glitcharea

scoreboard players operation @s glitchulthitimes = @s timeshit
execute as @s if score @s glitchulthitimes matches 8.. run scoreboard players set @s glitchulthitimes 8
scoreboard players set @s timeshit 0