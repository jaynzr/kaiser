function bored:plaenttip
function bored:plaentroooot
function bored:plaentspore
#function bored:rootstun








scoreboard players add @e zombieexplodetimer 0 
scoreboard players add @e[tag=plaent] zombcount 0 
scoreboard players add @e[tag=plaentexplosiontarget] zombieexplodetimer 1

execute at @e[tag=plaentspore] run particle sculk_charge_pop ~ ~ ~

effect give @e[tag=plaentspore] invisibility 1 1 true

execute as @e[tag=plaentexplosiontarget] at @s if score @s zombieexplodetimer matches 100.. run summon bat ~ ~ ~ {Tags:["plaentspore"],Invulnerable:1b,Silent:1b,active_effects:[{id:"minecraft:invisibility",duration:100000,show_particles:0b}]}
execute as @e[tag=plaentexplosiontarget] at @s if score @s zombieexplodetimer matches 100.. run summon bat ~ ~ ~ {Tags:["plaentspore"],Invulnerable:1b,Silent:1b,active_effects:[{id:"minecraft:invisibility",duration:100000,show_particles:0b}]}
execute as @e[tag=plaentexplosiontarget] at @s if score @s zombieexplodetimer matches 100.. run particle totem_of_undying ~ ~1 ~ 0 0 0 4 500
execute as @e[tag=plaentexplosiontarget] at @s if score @s zombieexplodetimer matches 100.. run tp @s ~ ~-2000 ~
execute as @e[tag=plaentexplosiontarget] at @s if score @s zombieexplodetimer matches 100.. run kill @s
execute at @e[tag=plaentexplosiontarget] run particle falling_spore_blossom ~ ~1 ~ .5 .7 .5 0 1


execute at @e[tag=plaent] run particle nautilus ~ ~1 ~ .1 .2 .1 0 3

scoreboard players add @e[tag=plaent] plaentroottime 1
execute as @e[tag=plaent] if score @s plaentroottime matches 100.. run function bored:plaentroots


execute as @e[tag=plaentzombie] run data merge entity @s {Silent:1b}

#scoreboard players add @e[tag=plaent] gravestormtime 0
scoreboard players add @e[tag=plaent] gravetideint 0
scoreboard players remove @e[tag=plaent] gravestormtime 1
#scoreboard players remove @e[tag=plaent] gravetideint 1

execute as @e[tag=plaent] if score @s gravestormtime matches 0 run kill @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}]

execute as @e[tag=plaent] if score @s gravestormtime matches 1.. run scoreboard players remove @s gravetideint 1
execute as @e[tag=plaent] at @s if score @s gravestormtime matches 1.. if score @s gravetideint matches ..0 at @e[tag=plaentroot,limit=5,sort=random,distance=..28] run summon item ~ ~ ~ {Item:{id:"minecraft:rotten_flesh"},Tags:["gravetideflesh"]}
execute as @e[tag=plaent] if score @s gravestormtime matches 1.. if score @s gravetideint matches ..0 store result score @s gravetideint run random value 5..10


#effect give @e[tag=tidezombie] glowing 1 1 true


execute as @e[tag=plaent] at @s at @e[tag=plaentinfect,type=!zombie,type=!item,type=!experience_orb,type=!experience_bottle,distance=..28,tag=!plaentspore] run summon zombie ~ ~ ~ {Tags:["plaentzombie"],ArmorItems:[{},{},{},{id:"minecraft:zombie_head",Count:1}],NoGravity:0b}
execute as @e[tag=plaent] at @s as @e[tag=plaentinfect,type=!zombie,type=!item,type=!experience_orb,type=!experience_bottle,distance=..28,tag=!plaentspore] at @s run teleport @e[tag=plaentzombie,limit=1,sort=nearest] ~ ~ ~ ~ ~
#execute as @e[tag=plaent] at @s at @e[tag=plaentinfect,type=!zombie,type=!item,type=!experience_orb,type=!experience_bottle,distance=..16] run scoreboard players add @s zombcount 1
execute as @e[tag=plaentinfect,type=!zombie,type=!item,type=!experience_orb,type=!experience_bottle,tag=!plaentspore] at @s if entity @e[tag=plaent,distance=..28] run kill @s

execute as @e[tag=plaentzombie,nbt={NoAI:1b}] at @s if block ~ ~-.01 ~ air run tp @s ~ ~-.01 ~

execute as @e[tag=plaentzombie] at @s unless entity @a[tag=plaenttarget,distance=..46] run data merge entity @s {NoAI:1b}
execute as @e[tag=plaentzombie] at @s if entity @a[tag=plaenttarget,distance=..46] run data merge entity @s {NoAI:0b}
execute as @e[tag=plaentzombie] at @s unless entity @e[tag=plaent,distance=..28] run data merge entity @s {NoAI:1b}
execute as @e[tag=plaentzombie] if score @s helth matches ..10 run data merge entity @s {NoAI:1b}


scoreboard players add @e[tag=tidezombie] tidezombielast 1
execute as @e[tag=tidezombie,tag=plaentzombie] if score @s tidezombielast matches 100.. run data merge entity @s {NoAI:1b}
execute as @e[tag=plaentzombie,tag=tidezombie,nbt={NoAI:1b}] at @s if score @s tidezombielast matches 100.. unless block ~ ~2.2 ~ air run tag @s add tidezombdead

execute as @e[tag=tidezombdead] at @s run tp @s ~ ~-2000 ~
#kill @e[tag=tidezombdead]

execute as @e[tag=plaent] if score @s gravestormtime matches 0 run kill @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}]


execute as @e[tag=plaentzombie,nbt={NoAI:1b}] at @s if block ~ ~2.2 ~ air run tp @s ~ ~-.1 ~
#execute as @e[tag=plaentzombie,nbt={NoAI:1b}] at @s unless block ~ ~2.2 ~ air run effect give @s resistance 1 255 true
execute as @e[tag=plaentzombie] at @s unless block ~ ~.1 ~ air run data merge entity @s {Invulnerable:1b}
execute as @e[tag=plaentzombie] at @s if block ~ ~.1 ~ air run data merge entity @s {Invulnerable:0b}
#execute as @e[tag=plaentzombie,nbt=!{NoAI:1b}] at @s unless block ~ ~ ~ air run effect give @s levitation 1 1 true
execute as @e[tag=plaentzombie,nbt=!{NoAI:1b}] at @s unless block ~ ~ ~ air run particle totem_of_undying ~ ~2 ~ 0.5 0 0.5 .1 3
execute as @e[tag=plaentzombie,nbt=!{NoAI:1b}] at @s unless block ~ ~ ~ air run tp @s ~ ~.1 ~
#execute as @e[tag=plaentzombie] at @s unless block ~ ~ ~ air run effect give @s resistance 1 100 true




execute as @e[tag=plaentzombie,nbt={NoAI:1b}] at @s unless block ~ ~2.2 ~ air run particle enchant ~ ~2.3 ~ .5 0 .5 0 2 force @a[distance=..7]

execute as @e[tag=plaentzombie,nbt={NoAI:1b}] at @s unless entity @e[tag=plaent,distance=..16] unless block ~ ~2.2 ~ air at @e[tag=plaentroot,limit=1,sort=random] run tp @s ~ ~-3 ~

execute as @e[tag=plaentzombie,nbt={NoAI:1b}] at @s if score @s helth matches ..10 unless block ~ ~2.2 ~ air at @e[tag=plaentroot,limit=1,sort=random] run tp @s ~ ~-3 ~


execute as @e[tag=plaentzombie,nbt={NoAI:1b}] at @s if score @s helth matches ..10 unless block ~ ~2.2 ~ air run data merge entity @s {Health:20}

execute as @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}] at @s if entity @e[tag=plaent,distance=..29] if entity @e[tag=plaentroot,distance=..1] run particle composter ~ ~.2 ~ .2 .2 .2 0 1
execute as @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}] at @s if entity @e[tag=plaent,distance=..29] if entity @e[tag=plaentroot,distance=..1] run scoreboard players add @s rotgrow 1
execute as @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},tag=!gravetideflesh] at @s if entity @e[tag=plaent,distance=..29] if entity @e[tag=plaentroot,distance=..1] at @e[tag=plaentroot,limit=1,sort=random] if score @s rotgrow matches 40.. run scoreboard players add @e[tag=plaent,limit=1,sort=nearest] zombcount 1
execute as @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},tag=gravetideflesh] at @s if entity @e[tag=plaent,distance=..29] if entity @e[tag=plaentroot,distance=..1] at @e[tag=plaentroot,limit=1,sort=random] if score @s rotgrow matches 40.. run scoreboard players add @e[tag=plaent,limit=1,sort=nearest] tidezombcount 1
execute as @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}}] at @s if entity @e[tag=plaent,distance=..29] if entity @e[tag=plaentroot,distance=..1] at @e[tag=plaentroot,limit=1,sort=random] if score @s rotgrow matches 40.. run kill @s

#effect give @e[tag=plaentzombie,nbt={NoAI:0b}] glowing 1 1 true

#execute as @e[tag=plaentzombie,nbt={NoAI:1b}] at @s unless entity @e[tag=plaent,distance=..14] run kill @s
execute as @e[tag=plaent] at @s if score @s plaentroottime matches 10.. if score @s tidezombcount matches 1.. at @e[tag=plaentroot,limit=3,sort=random,distance=..16] run summon zombie ~ ~-2.2 ~ {Tags:["plaentzombie","tidezombie"],ArmorItems:[{},{},{},{id:"minecraft:zombie_head",Count:1}],NoGravity:0b,Invulnerable:1b}
execute as @e[tag=plaent] at @s if score @s plaentroottime matches 10.. if score @s zombcount matches 1.. at @e[tag=plaentroot,limit=3,sort=random,distance=..16] run summon zombie ~ ~-2.2 ~ {Tags:["plaentzombie"],ArmorItems:[{},{},{},{id:"minecraft:zombie_head",Count:1}],NoGravity:0b}
execute as @e[tag=plaent] at @s if score @s plaentroottime matches 10.. if score @s zombcount matches 1.. run scoreboard players remove @s zombcount 1
execute as @e[tag=plaent] at @s if score @s plaentroottime matches 10.. if score @s tidezombcount matches 1.. run scoreboard players remove @s tidezombcount 1

