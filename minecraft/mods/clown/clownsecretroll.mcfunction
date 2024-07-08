execute as @s run function bored:clown/roll
execute at @s if score @s gunchambernum matches 4 run playsound block.amethyst_block.break master @a ~ ~ ~ 20
execute at @s if score @s gunchambernum matches 5 run playsound block.amethyst_block.resonate master @a ~ ~ ~ 40
execute at @s if score @s gunchambernum matches 6 run playsound block.amethyst_cluster.hit master @a ~ ~ ~ 40

execute at @s if score @s gunchambernum matches 7 run playsound block.amethyst_block.fall master @a ~ ~ ~ 40
execute at @s if score @s gunchambernum matches 8 run playsound block.amethyst_block.chime master @a ~ ~ ~ 40