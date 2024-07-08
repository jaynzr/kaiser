execute as @a[tag=clown] at @s if score @s gunchambernum matches ..1 if score @s power1cd matches 1 run playsound block.anvil.place ambient @s ~ ~ ~ 5
execute as @a[tag=clown] unless score @s shift matches ..0 if score @s power1 matches 1.. unless score @s power1cd matches 1.. run function bored:clown/clownshootother
execute as @a[tag=clown] if score @s shift matches ..0 if score @s power1 matches 1.. unless score @s power1cd matches 1.. run function bored:clown/clownselfshot
execute as @a[tag=clown] if score @s ult matches 1.. unless score @s ultcd matches 1.. run function bored:clown/clownult
execute as @a[tag=clown] unless score @s shift matches ..0 if score @s gunchambernum matches ..1 if score @s jump matches 1.. run effect give @s jump_boost 1 7 true
execute as @a[tag=clown] if score @s power2 matches 1.. run function bored:clown/clownsecretroll

execute as @e[tag=clownshot,team=blue] at @s run summon armor_stand ~ ~ ~ {Team:"blue",NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Small:1b,Invisible:1b,Tags:["clownshotind"]}
execute as @e[tag=clownshot,team=blue] at @s run particle cloud ~ ~ ~ 0 0 0 0 10 force

execute as @e[tag=clownshot,team=blue] at @s run tp @s ^ ^ ^.6
execute as @e[tag=clownshot,team=blue] at @s if score @s power1last matches 1 run summon creeper ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Fuse:0,ignited:1b,ExplosionRadius:5b}
execute as @e[tag=clownshot,team=blue] at @s unless block ~ ~ ~ air run kill @s

execute as @a[tag=clownfall] at @s unless block ~ ~-1 ~ air run effect give @s slow_falling 1 255 true
execute as @a[tag=clownfall] at @s unless block ~ ~-.2 ~ air run tag @s remove clownfall
#effect give @a[tag=clownfall] glowing 1 1 true

execute as @e[tag=clownshot,team=blue] at @s run summon armor_stand ~ ~ ~ {Team:"blue",NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Small:1b,Invisible:1b,Tags:["clownshotind"]}
execute as @e[tag=clownshot,team=blue] at @s run particle cloud ~ ~ ~ 0 0 0 0 10 force
#execute as @e[tag=clownshot,team=blue] at @s unless block ^ ^ ^.6 air run kill @s
execute as @e[tag=clownshot,team=blue] at @s unless block ^ ^ ^.6 air run kill @s
execute as @e[tag=clownshot,team=blue] at @s run tp @s ^ ^ ^.6



execute as @e[tag=clownshot,team=blue] at @s run summon armor_stand ~ ~ ~ {Team:"blue",NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Small:1b,Invisible:1b,Tags:["clownshotind"]}
execute as @e[tag=clownshot,team=blue] at @s run particle cloud ~ ~ ~ 0 0 0 0 10 force
execute as @e[tag=clownshot,team=blue] at @s unless block ^ ^ ^.6 air run kill @s
execute as @e[tag=clownshot,team=blue] at @s run tp @s ^ ^ ^.6



execute as @e[tag=clownshot,team=blue] at @s run summon armor_stand ~ ~ ~ {Team:"blue",NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Small:1b,Invisible:1b,Tags:["clownshotind"]}
execute as @e[tag=clownshot,team=blue] at @s run particle cloud ~ ~ ~ 0 0 0 0 10 force
execute as @e[tag=clownshot,team=blue] at @s unless block ^ ^ ^.6 air run kill @s
execute as @e[tag=clownshot,team=blue] at @s run tp @s ^ ^ ^.6



execute as @e[tag=clownshot,team=blue] at @s run summon armor_stand ~ ~ ~ {Team:"blue",NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Small:1b,Invisible:1b,Tags:["clownshotind"]}
execute as @e[tag=clownshot,team=blue] at @s run particle cloud ~ ~ ~ 0 0 0 0 10 force
execute as @e[tag=clownshot,team=blue] at @s unless block ^ ^ ^.6 air run kill @s
execute as @e[tag=clownshot,team=blue] at @s run tp @s ^ ^ ^.6



execute as @e[tag=clownshot,team=blue] at @s run summon armor_stand ~ ~ ~ {Team:"blue",NoGravity:1b,Silent:1b,Invulnerable:1b,HasVisualFire:0b,Small:1b,Invisible:1b,Tags:["clownshotind"]}
execute as @e[tag=clownshot,team=blue] at @s run particle cloud ~ ~ ~ 0 0 0 0 10 force
execute as @e[tag=clownshot,team=blue] at @s unless block ^ ^ ^.6 air run kill @s
execute as @e[tag=clownshot,team=blue] at @s run tp @s ^ ^ ^.6

execute as @e[tag=clownshot] at @s if score @s power1last matches 30.. run kill @s
execute as @e[tag=clownshotind] at @s if score @s power1last matches 10.. run particle crimson_spore ~ ~ ~ 0 0 0 5 200
execute as @e[tag=clownshotind] at @s if score @s power1last matches 10.. run playsound block.anvil.hit master @a ~ ~ ~ 10

execute as @e[tag=clownshotind,team=blue] at @s if score @s power1last matches 10.. as @e[team=!blue,distance=..2] run damage @s 17 lightning_bolt

execute as @e[tag=clownshotind] at @s if score @s power1last matches 10.. run kill @s