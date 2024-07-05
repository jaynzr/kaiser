execute as @e[type=glow_squid] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 water replace light[waterlogged=true]
execute as @e[type=glow_squid] at @s if block ~ ~ ~ water run fill ~ ~ ~ ~ ~ ~ light[waterlogged=true] replace water

execute as @e[type=glow_squid] at @s unless entity @a[distance=..120] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 water replace light[waterlogged=true]
execute as @e[type=glow_squid] at @s unless entity @a[distance=..120] run tp @s ~ ~-10000 ~


execute as @e[type=squid] at @s if block ~ ~ ~ light[waterlogged=true] if score @s justspawm matches 300 run tag @s add squidegg
execute as @e[type=glow_squid] at @s if block ~ ~ ~ light[waterlogged=true] if score @s justspawm matches 300 run tag @s add squidegg
execute as @e[tag=squidegg] at @s if block ~ ~-.1 ~ light[waterlogged=true] run tp @s ~ ~-.1 ~ ~ ~90
execute as @e[tag=squidegg] at @s if block ~ ~-.1 ~ water run tp @s ~ ~-.1 ~ ~ ~90

execute as @e[tag=squidegg] at @s unless block ~ ~-.1 ~ light[waterlogged=true] unless block ~ ~-.1 ~ water run summon slime ~ ~ ~ {Silent:0b,NoAI:1b,Health:5f,Tags:["squidhatchegg","stationary"]}
execute as @e[tag=squidegg] at @s unless block ~ ~-.1 ~ light[waterlogged=true] unless block ~ ~-.1 ~ water run tag @s remove squidegg
execute at @e[tag=squidhatchegg] run particle sculk_charge_pop

scoreboard players set @e[tag=squidegg] glow 2
tag @e[tag=squidhatchegg] add stationary

scoreboard players set @e[tag=squidhatchegg] inv 2
effect give @e[tag=squidhatchegg] water_breathing 1 1 true

execute as @e[tag=squidhatchegg] at @s if score @s justspawm matches 600.. run summon squid
execute as @e[tag=squidhatchegg] at @s if score @s justspawm matches 600.. run tp @s ~ ~-10000 ~
execute as @e[tag=squidhatchegg] at @s if score @s justspawm matches 600.. run kill @s