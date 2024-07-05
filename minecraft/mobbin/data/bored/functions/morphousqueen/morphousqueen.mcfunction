execute at @e[tag=!morphqueen,type=elder_guardian] run summon elder_guardian ~ ~ ~ {Health:200f,Tags:["morphqueen"],Attributes:[{Name:"generic.attack_damage",Base:15}]}
kill @e[type=elder_guardian,tag=!morphqueen]

tag @e remove elderlasertarget
execute as @e[tag=morphqueen] on target run effect give @s wither 2 1 true

execute at @a as @r[distance=..100] at @s if entity @e[type=guardian,distance=..50] if block ~ ~ ~ water if score @s conversiontimer matches 1.. run scoreboard players add @s conversiontimer 1

execute at @e[tag=morphqueen] as @e[type=!player,type=!elder_guardian,type=!guardian,type=!armor_stand,distance=10..50,type=!item,limit=1,sort=nearest] at @s if block ~ ~ ~ water if entity @a[distance=..350] run scoreboard players add @s conversiontimer 20
execute at @e[type=guardian] unless entity @e[tag=morphqueen,distance=..50] as @e[type=!player,type=!elder_guardian,type=!guardian,type=!armor_stand,distance=..50,type=!item,limit=1,sort=nearest] at @s if block ~ ~ ~ water if entity @a[distance=..350] run scoreboard players add @s conversiontimer 1


execute as @e at @s if score @s conversiontimer matches 100.. if score #egcounter egspawn matches 700.. unless entity @e[tag=queenegg,distance=..100] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["queenegg"]}

scoreboard players add #egcounter egspawn 0



#execute as @e[tag=morphegg] if score #timetrack time matches 18000.. run scoreboard players add @e[tag=morphegg] hatchtimer 1
#execute as @e[tag=morphegg] if score #timetrack time matches 18000.. run scoreboard players add @e[tag=queenegg] hatchtimer 1

execute as @e at @s if score @s conversiontimer matches 100.. unless score #egcounter egspawn matches 700.. run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["morphegg"]}
execute as @e at @s if score @s conversiontimer matches 100.. unless score #egcounter egspawn matches 700.. run setblock ~ ~ ~ sea_lantern
execute as @e at @s if score @s conversiontimer matches 100.. if score #egcounter egspawn matches 700.. unless entity @e[tag=queenegg,distance=..100] run scoreboard players set #egcounter egspawn 0
execute as @e at @s if score @s conversiontimer matches 100.. unless score #egcounter egspawn matches 700.. run scoreboard players add #egcounter egspawn 1
execute as @e at @s if score @s conversiontimer matches 100.. run tp @s ~ ~-10000 ~
execute as @e at @s if score @s conversiontimer matches 100.. run kill @s

execute as @e[tag=morphegg] at @s unless block ~ ~ ~ sea_lantern run kill @s

execute if entity @e[tag=queenegg] run scoreboard players set #egcounter egspawn 0
execute if entity @e[tag=morphqueen] run scoreboard players set #egcounter egspawn 0

execute at @e[tag=morphegg] run setblock ~ ~ ~ sea_lantern
execute at @e[tag=queenegg] run setblock ~ ~ ~ verdant_froglight



execute as @e[tag=morphegg] at @s run scoreboard players add @s hatchtimer 1
execute as @e[tag=queenegg] at @s run scoreboard players add @s hatchtimer 1
execute as @e[tag=morphegg] at @s if entity @a[distance=..7] run scoreboard players add @s hatchtimer 2
execute as @e[tag=morphegg] at @s if entity @a[distance=..7] if score @s hatchtimer matches 200.. run summon guardian
execute as @e[tag=morphegg] at @s if entity @a[distance=..7] if score @s hatchtimer matches 200.. run fill ~ ~ ~ ~ ~ ~ water replace sea_lantern
execute as @e[tag=morphegg] at @s if entity @a[distance=..7] if score @s hatchtimer matches 200.. run kill @s



execute as @e[tag=morphegg] at @s if entity @a[distance=..20] if score @s hatchtimer matches 400.. run summon guardian
execute as @e[tag=morphegg] at @s if entity @a[distance=..20] if score @s hatchtimer matches 400.. run fill ~ ~ ~ ~ ~ ~ water replace sea_lantern
execute as @e[tag=morphegg] at @s if entity @a[distance=..20] if score @s hatchtimer matches 400.. run kill @s



execute as @e[tag=morphegg] at @s if score @s hatchtimer matches 500.. run fill ~ ~ ~ ~ ~ ~ water replace sea_lantern
execute as @e[tag=morphegg] at @s if score @s hatchtimer matches 500.. run kill @s


execute as @e[tag=queenegg] at @s if score @s hatchtimer matches 800.. run summon elder_guardian ~ ~ ~ {Health:200f,Tags:["morphqueen"],Attributes:[{Name:"generic.attack_damage",Base:15}]}
execute as @e[tag=queenegg] at @s if score @s hatchtimer matches 800.. run fill ~ ~ ~ ~ ~ ~ water replace verdant_froglight
execute as @e[tag=queenegg] at @s if score @s hatchtimer matches 800.. run kill @s



