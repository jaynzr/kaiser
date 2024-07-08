scoreboard players remove @s gunchambernum 1

execute as @s at @s unless score @s gunchambernum matches ..0 run playsound block.anvil.fall block @a ~ ~ ~

execute as @s if score @s gunchambernum matches ..0 run function bored:clown/clownroulettefail

execute as @s unless score @s gunchambernum matches 1 run scoreboard players set @s power1cd 10