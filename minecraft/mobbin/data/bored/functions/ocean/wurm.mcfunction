#execute at @a as @e[type=salmon,limit=1,sort=nearest] at @s if block ~ ~ ~ water unless entity @e[tag=fakewurm,distance=..10] if entity @e[type=salmon,distance=..20] if biome ~ ~ ~ #is_deep_ocean run tag @s add fakewurmsumm
#execute at @a as @e[type=salmon,limit=1,sort=nearest] at @s if block ~ ~ ~ water unless entity @e[tag=fakewurm,distance=..10] unless entity @e[type=salmon,distance=2..20] if score @s height matches ..47 if biome ~ ~ ~ #is_deep_ocean run tag @s add wurmsumm

#execute at @a as @e[type=cod,limit=1,sort=nearest] at @s if block ~ ~ ~ water unless entity @e[tag=fakewurm,distance=..10] if entity @e[type=cod,distance=..20] if biome ~ ~ ~ #is_deep_ocean run tag @s add fakewurmsumm
#execute at @a as @e[type=cod,limit=1,sort=nearest] at @s if block ~ ~ ~ water unless entity @e[tag=fakewurm,distance=..10] unless entity @e[type=cod,distance=2..20] if score @s height matches ..47 if biome ~ ~ ~ #is_deep_ocean run tag @s add wurmsumm

#execute at @a as @e[type=tropical_fish,limit=1,sort=nearest] at @s if block ~ ~ ~ water unless entity @e[tag=fakewurm,distance=..10] if entity @e[type=tropical_fish,distance=2..5] if biome ~ ~ ~ #is_deep_ocean run tag @s add fakewurmsumm
#execute at @a as @e[type=tropical_fish,limit=1,sort=nearest] at @s if block ~ ~ ~ water unless entity @e[tag=fakewurm,distance=..10] unless entity @e[type=tropical_fish,distance=2..5] if biome ~ ~ ~ #is_deep_oceanm if score @s height matches ..47 run tag @s add wurmsumm

execute as @e[type=tropical_fish,tag=spawned] at @s unless entity @e[tag=wurm,distance=..10] unless entity @e[tag=fakewurm,distance=..10] store result score @s rando run random value 1..10
execute as @e[type=tropical_fish,tag=spawned] at @s if score @s rando matches 7..9 if biome ~ ~ ~ #is_deep_ocean run tag @s add fakewurmsumm
execute as @e[type=tropical_fish,tag=spawned] at @s if score @s rando matches 10 if biome ~ ~ ~ #is_deep_ocean if score @s height matches ..47 run tag @s add wurmsumm

execute as @e[type=cod,tag=spawned] at @s unless entity @e[tag=wurm,distance=..10] unless entity @e[tag=fakewurm,distance=..10] store result score @s rando run random value 1..10
execute as @e[type=cod,tag=spawned] at @s if score @s rando matches 7..9 if biome ~ ~ ~ #is_deep_ocean run tag @s add fakewurmsumm
execute as @e[type=cod,tag=spawned] at @s if score @s rando matches 10 if biome ~ ~ ~ #is_deep_ocean if score @s height matches ..47 run tag @s add wurmsumm

execute as @e[type=salmon,tag=spawned] at @s unless entity @e[tag=wurm,distance=..10] unless entity @e[tag=fakewurm,distance=..10] store result score @s rando run random value 1..10
execute as @e[type=salmon,tag=spawned] at @s if score @s rando matches 7..9 if biome ~ ~ ~ #is_deep_ocean run tag @s add fakewurmsumm
execute as @e[type=salmon,tag=spawned] at @s if score @s rando matches 10 if biome ~ ~ ~ #is_deep_ocean if score @s height matches ..47 run tag @s add wurmsumm

execute as @e[tag=fakewurmsumm] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["fakewurm"]}
execute as @e[tag=fakewurmsumm] at @s run tp @s ~ ~-10000 ~
execute as @e[tag=fakewurmsumm] run kill @s

execute as @e[tag=fakewurm] at @s if entity @a[distance=..4] run summon item ~ ~ ~ {Item:{id:"gold_nugget",Count:1b}}
execute as @e[tag=fakewurm] if entity @a[distance=..4] if score @s fakewurmdrop matches 1.. run function bored:ocean/goldrop
execute as @e[tag=fakewurm] at @s if entity @a[distance=..4] run fill ~ ~ ~ ~ ~ ~ water replace shroomlight
execute as @e[tag=fakewurm] at @s if entity @a[distance=..4] run kill @s

execute at @a at @e[tag=fakewurm,distance=100..] run fill ~ ~ ~ ~ ~ ~ water replace shroomlight
execute at @a as @e[tag=fakewurm,distance=100..] run kill @s

#execute at @a as @e[tag=wurmsumm,limit=1,sort=nearest] at @s if block ~ ~ ~ water unless entity @e[tag=wurm,distance=..10] if biome ~ ~ ~ #is_deep_ocean run tag @s add wurmsumm
execute at @a as @e[tag=wurmsumm,limit=1,sort=nearest] at @s if block ~ ~ ~ water if biome ~ ~ ~ #is_deep_ocean run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["wurm"]}

execute at @e[tag=wurmsumm] run setblock ~ ~ ~ shroomlight
tp @e[tag=wurmsumm] ~ ~-10000 ~
kill @e[tag=wurmsumm]

execute at @e[tag=wurm] run fill ~ ~ ~ ~ ~ ~ shroomlight replace water
execute at @e[tag=fakewurm] run fill ~ ~ ~ ~ ~ ~ shroomlight replace water

execute as @e[tag=wurm] at @s if entity @a[distance=..4] run fill ~ ~ ~ ~ ~ ~ water replace shroomlight
execute as @e[tag=wurm] at @s if entity @a[distance=..4] run summon phantom ~ ~ ~ {Health:20f,Tags:["anglerwurm"],Attributes:[{Name:"generic.movement_speed",Base:4}]}
execute as @e[tag=wurm] at @s if entity @a[distance=..4] run kill @s

execute as @e[tag=anglerwurm] at @s unless block ~ ~.1 ~ #underwater_bonemeals unless block ~ ~.1 ~ water unless block ~ ~.1 ~ light[waterlogged=true] unless entity @e[tag=wurmdive,distance=..10] run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["wurmdive"]}
execute as @e[tag=wurmdive] at @s run scoreboard players set @e[tag=anglerwurm,limit=1,sort=nearest,distance=..2] inv 2
execute as @e[tag=wurmdive] at @s run tp @e[tag=anglerwurm,limit=1,sort=nearest,distance=..2] @s
#execute as @e[tag=wurmdive] at @s run ride @a[limit=1,sort=nearest,distance=..2] mount @s
execute as @e[tag=anglerwurm] at @s if entity @e[tag=wurmdive,distance=..2] run ride @a[limit=1,sort=nearest,distance=..2] mount @s
execute as @e[tag=wurmdive] at @s unless block ~ ~-.4 ~ water if block ~ ~ ~ water run kill @s
execute as @e[tag=wurmdive] at @s if score @s wurmdivetime matches ..19 run tp @s ~ ~-.4 ~
execute as @e[tag=wurmdive] at @s if score @s wurmdivetime matches 20.. run kill @s
execute as @e[tag=wurmdive] if score @s justspawm matches 1 store result score @s wurmdivetime run random value 1..10
execute as @e[tag=wurmdive] at @s run scoreboard players add @s wurmdivetime 1
execute at @e[tag=wurmdive] run particle bubble ~ ~ ~ .1 .1 0.1 0 2

execute at @e[tag=anglerwurm] as @a[distance=..2] if score @s hurt matches 1.. run summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["wurmdive"]}

execute at @e[tag=wurm] as @e[type=!player,type=!guardian,type=!armor_stand,distance=..7] run tag @s add stationary
execute at @e[tag=wurm] as @e[type=!player,type=!guardian,type=!armor_stand,distance=..7] at @s run tp @s ^ ^ ^.1 facing entity @e[tag=wurm,limit=1,sort=nearest]
execute at @e[tag=wurm] as @e[type=squid] at @s run tp @s ~ ~ ~ ~180 ~
execute at @e[tag=wurm] as @e[type=glow_squid] at @s run tp @s ~ ~ ~ ~180 ~
execute at @e[tag=wurm] as @e[type=!player,type=!guardian,type=!armor_stand,distance=..2] run kill @s


execute as @e[tag=anglerwurm] at @s unless entity @a[distance=..20] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["wurm"]}
execute as @e[tag=anglerwurm] at @s unless entity @a[distance=..20] run tp @s ~ ~-10000 ~
execute as @e[tag=anglerwurm] at @s unless entity @a[distance=..20] run kill @s


effect give @e[tag=anglerwurm] water_breathing 1 1 true

execute at @a run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 water replace light
execute at @a run fill ~ ~1 ~ ~ ~1 ~ light[waterlogged=true,level=8] replace water

