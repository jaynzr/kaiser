scoreboard players remove @s gunchambernum 1

execute as @s[team=blue] at @s unless score @s gunchambernum matches ..0 run playsound block.azalea_leaves.break ambient @a ~ ~ ~ 4
execute as @s[team=blue] at @s unless score @s gunchambernum matches ..0 run scoreboard players set @s power1cd 80


execute as @s[team=blue] at @s if score @s gunchambernum matches ..0 run summon armor_stand ~ ~ ~ {Team:"blue",NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Small:1b,Invisible:1b,Tags:["clownshot"]}
execute as @s[team=blue] at @s if score @s gunchambernum matches ..0 run tp @e[tag=clownshot,limit=1,sort=nearest,team=blue] ~ ~1 ~ ~ ~

execute as @s at @s if score @s gunchambernum matches ..0 run effect give @s resistance 1 255 true
#execute as @s at @s if score @s gunchambernum matches ..0 run effect give @s slow_falling 1 255 true
execute as @s at @s if score @s gunchambernum matches ..0 run tag @s add clownfall


execute as @s[team=blue] at @s if score @s gunchambernum matches ..0 run function bored:clown/clownreloadsound