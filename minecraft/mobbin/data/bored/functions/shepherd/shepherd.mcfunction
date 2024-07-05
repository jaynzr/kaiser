#spawn timer

execute as @e[tag=shepherd] at @s if entity @a[distance=..25] run scoreboard players add @s sheepspawn 1
execute as @e[tag=shepherd] at @s if entity @a[distance=..25] if score @s sheepspawn matches 35 run summon sheep ~ ~ ~ {Health:1f,Attributes:[{Name:"generic.max_health",Base:1}]}
execute as @e[tag=shepherd] at @s if score @s sheepspawn matches 35.. run scoreboard players set @s sheepspawn 0

#yeet timer

execute as @e[tag=shepherd] at @s if entity @a[distance=..25] run scoreboard players add @s throwtimer 1
execute as @e[tag=shepherd] at @s if entity @a[distance=..25] if score @s throwtimer matches 220 run function bored:shepherd/throwsheep
execute as @e[tag=shepherd] at @s if score @s throwtimer matches 220.. run scoreboard players set @s throwtimer 0


#yeet



execute as @e[type=sheep,tag=throwsheep] at @s if score @s yeettimer matches 30.. unless block ~ ~ ~ air run scoreboard players set @s yeettimer 70

execute as @e[type=sheep,tag=throwsheep] if score @s yeettimer matches ..29 run effect give @s levitation 1 1 true
scoreboard players add @e[tag=throwsheep,type=sheep] yeettimer 1
execute as @e[type=sheep,tag=throwsheep] at @s if score @s yeettimer matches 20..35 run tp @s ~ ~ ~ facing entity @p
execute as @e[type=sheep,tag=throwsheep] at @s if score @s yeettimer matches 30.. run tp @s ^ ^ ^1

execute as @e[type=sheep,tag=throwsheep] at @s if score @s yeettimer matches 30.. if entity @a[distance=..2] run summon creeper ~ ~ ~ {ExplosionRadius:5b,Fuse:1,ignited:1b}
execute as @e[type=sheep,tag=throwsheep] at @s if score @s yeettimer matches 30.. if entity @a[distance=..2] run kill @s



execute as @e[type=sheep,tag=throwsheep] at @s if score @s yeettimer matches 70.. run summon creeper ~ ~ ~ {ExplosionRadius:3b,Fuse:0,ignited:1b}
execute as @e[type=sheep,tag=throwsheep] at @s if score @s yeettimer matches 70.. run kill @s

execute as @e[type=sheep,tag=throwsheep] at @s if score @s yeettimer matches 20.. run particle dragon_breath