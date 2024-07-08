execute as @a[tag=glitch] if score @s power1 matches 1.. if score @s power1cd matches ..0 run tag @s add p1
execute as @a[tag=glitch] if score @s power2 matches 1.. if score @s power2cd matches ..0 if score @s shift matches ..0 run tag @s add p2
execute as @a[tag=glitch,team=blue] if score @s power2 matches 1.. if score @s shift matches 1.. run scoreboard players set @e[tag=glitchbomb,team=blue] power2last 100
execute as @a[tag=glitch,team=red] if score @s power2 matches 1.. if score @s shift matches 1.. run scoreboard players set @e[tag=glitchbomb,team=red] power2last 100
execute as @a[tag=glitch] if score @s power3 matches 1.. if score @s power3cd matches ..0 run tag @s add p3
execute as @a[tag=glitch] if score @s ult matches 1.. if score @s timeshit matches 6.. if score @s shift matches ..0 run tag @s add p4

execute as @a[tag=glitcharea] if score @s ult matches 1.. if score @s shift matches 1.. if score @s glitchulthitimes matches 1.. run function bored:glitch/glithultatk
execute as @a[tag=glitcharea] if score @s ult matches 1.. if score @s shift matches 1.. run scoreboard players set @s glitchulthitimes 0

#execute as @a[tag=glitcharea,team=blue] if score @s ult matches 1.. if score @s shift matches 1.. run kill @e[tag=gli]

execute as @a[tag=glitcharea] if score @s power1 matches 1.. unless score @s glitchulthitimes matches ..0 run function bored:glitch/glithultatk

execute as @a[tag=p1,tag=glitch] run function bored:glitch/glitchp1
execute as @e[tag=p2,tag=glitch] run function bored:glitch/glitchp2
execute as @e[tag=p3,tag=glitch] run function bored:glitch/glitchp3
execute as @e[tag=p4,tag=glitch] run function bored:glitch/glitchult

function bored:glitch/glitchslashpart



execute at @e[tag=glitchspikerota] run particle minecraft:dust_color_transition 1.549 .9 2 1.3 2 .5 .3 ~ ~0.3 ~ 1.7 0 1.7 0 30

#scoreboard players add @e[tag=glitchspikerota] power1last 2

execute as @e[tag=glitchspikerota,team=blue] at @s if score @s power1last matches ..15 run tp @s ^ ^ ^1
execute as @e[tag=glitchspikerota,team=blue] at @s if score @s power1last matches ..15 run summon armor_stand ^4 ^ ^ {Team: "blue", NoGravity: 1b, Silent: 1b, Invulnerable: 1b, Invisible: 1b, Tags: ["glitchspikel", "glitchspike"]}
execute as @e[tag=glitchspikerota,team=blue] at @s if score @s power1last matches ..15 run summon armor_stand ^-4 ^ ^ {Team: "blue", NoGravity: 1b, Silent: 1b, Invulnerable: 1b, Invisible: 1b, Tags: ["glitchspiker", "glitchspike"]}


execute at @e[tag=glitchspikerota,team=blue] as @e[tag=glitchspikel,team=blue,limit=1,sort=nearest] run tp @s ^4 ^ ^ facing entity @e[tag=glitchspikerota,limit=1,sort=nearest,team=blue]
execute at @e[tag=glitchspikerota,team=blue] as @e[tag=glitchspiker,team=blue,limit=1,sort=nearest] run tp @s ^-4 ^ ^ facing entity @e[tag=glitchspikerota,limit=1,sort=nearest,team=blue]


execute as @e[tag=glitchspikerota,team=red] at @s if score @s power1last matches ..15 run tp @s ^ ^ ^1
execute as @e[tag=glitchspikerota,team=red] at @s if score @s power1last matches ..15 run summon armor_stand ^4 ^ ^ {Team: "red", NoGravity: 1b, Silent: 1b, Invulnerable: 1b, Invisible: 1b, Tags: ["glitchspikel", "glitchspike"]}
execute as @e[tag=glitchspikerota,team=red] at @s if score @s power1last matches ..15 run summon armor_stand ^-4 ^ ^ {Team: "red", NoGravity: 1b, Silent: 1b, Invulnerable: 1b, Invisible: 1b, Tags: ["glitchspiker", "glitchspike"]}


execute at @e[tag=glitchspikerota,team=red] as @e[tag=glitchspikel,team=red,limit=1,sort=nearest] run tp @s ^4 ^ ^ facing entity @e[tag=glitchspikerota,limit=1,sort=nearest,team=red]
execute at @e[tag=glitchspikerota,team=red] as @e[tag=glitchspiker,team=red,limit=1,sort=nearest] run tp @s ^-4 ^ ^ facing entity @e[tag=glitchspikerota,limit=1,sort=nearest,team=red]





execute as @e[tag=glitchspikerota] if score @s power1last matches 15.. run kill @s

execute as @e[tag=glitchspike,team=blue] if entity @e[tag=glitchspikerota,team=blue] run scoreboard players set @s power1last -1


execute as @e[tag=glitchspike,team=blue] at @s if score @s power1last matches 1.. run tp @s ^ ^ ^.5
#execute as @e[tag=glitchspiker,team=blue] at @s if score @s power1last matches 1.. run tp @s ^ ^ ^.5

execute as @e[tag=glitchspikel] at @s if score @s power1last matches 1.. if entity @e[tag=glitchspiker,distance=..0.1,team=blue] run effect give @e[team=!blue,distance=..3.5] instant_damage 1 1 true
execute as @e[tag=glitchspiker] at @s if score @s power1last matches 1.. if entity @e[tag=glitchspikel,distance=..0.1,team=blue] run effect give @e[team=!blue,distance=..3.5] instant_damage 1 1 true


execute as @e[tag=glitchspikel,team=blue] at @s if entity @e[tag=glitchspiker,distance=..0.1,team=blue] run particle end_rod ~ ~ ~ 0 0 0 1 5
execute as @e[tag=glitchspiker,team=blue] at @s if entity @e[tag=glitchspikel,distance=..0.1,team=blue] run particle end_rod ~ ~ ~ 0 0 0 1 5

execute at @e[tag=glitchspikel,team=blue] as @e[tag=glitch,team=blue] if entity @e[tag=glitchspiker,distance=..0.1,team=blue] run effect give @s instant_damage 1 0 true
execute as @e[tag=glitchspikel,team=blue] at @s if entity @e[tag=glitchspiker,distance=..0.1,team=blue] run kill @e[tag=glitchspike,team=blue]



execute as @e[tag=glitchspike,team=red] if entity @e[tag=glitchspikerota,team=red] run scoreboard players set @s power1last -1


execute as @e[tag=glitchspike,team=red] at @s if score @s power1last matches 1.. run tp @s ^ ^ ^.5
#execute as @e[tag=glitchspiker,team=red] at @s if score @s power1last matches 1.. run tp @s ^ ^ ^.5

execute as @e[tag=glitchspikel] at @s if score @s power1last matches 1.. if entity @e[tag=glitchspiker,distance=..0.1,team=red] run effect give @e[team=!red,distance=..3.5] instant_damage 1 1 true
execute as @e[tag=glitchspiker] at @s if score @s power1last matches 1.. if entity @e[tag=glitchspikel,distance=..0.1,team=red] run effect give @e[team=!red,distance=..3.5] instant_damage 1 1 true


execute as @e[tag=glitchspikel,team=red] at @s if entity @e[tag=glitchspiker,distance=..0.1,team=red] run particle end_rod ~ ~ ~ 0 0 0 1 5
execute as @e[tag=glitchspiker,team=red] at @s if entity @e[tag=glitchspikel,distance=..0.1,team=red] run particle end_rod ~ ~ ~ 0 0 0 1 5

execute at @e[tag=glitchspikel,team=red] as @e[tag=glitch,team=red] if entity @e[tag=glitchspiker,distance=..0.1,team=red] run effect give @s instant_damage 1 0 true
execute as @e[tag=glitchspikel,team=red] at @s if entity @e[tag=glitchspiker,distance=..0.1,team=red] run kill @e[tag=glitchspike,team=red]


execute as @e[tag=glitchcurtainfall] at @s positioned ~ ~5 ~ unless block ~ ~-.1 ~ air run kill @s
#execute as @e[tag=glitchcurtainfall] if score @s power1last matches 100.. run kill @s
execute as @e[tag=glitchcurtainl] if score @s power2last matches 8.. run kill @s
execute as @e[tag=glitchcurtainr] if score @s power2last matches 8.. run kill @s

execute as @e[tag=glitchbomb] at @s run tp @s ^ ^ ^.5 ~ ~

execute as @e[tag=glitchcurtainfall] if score @s power2last matches 30.. run kill @s
execute as @e[tag=glitchcurtainwall] if score @s power2last matches 100.. run kill @s

execute as @e[tag=glitchbomb,team=blue] at @s if score @s power2last matches 100.. run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["glitchcurtainl"],Team:"blue"}
execute as @e[tag=glitchbomb,team=blue] at @s if score @s power2last matches 100.. run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["glitchcurtainr"],Team:"blue"}

execute as @e[tag=glitchbomb,team=blue] at @s if score @s power2last matches 100.. run tp @e[tag=glitchcurtainr,team=blue] ~ ~ ~ ~ ~
execute as @e[tag=glitchbomb,team=blue] at @s if score @s power2last matches 100.. run tp @e[tag=glitchcurtainl,team=blue] ~ ~ ~ ~ ~




execute at @e[tag=glitchcurtainl] run particle enchant ~ ~ ~ .1 .1 .1 0 10

execute at @e[tag=glitchcurtainr] run particle enchant ~ ~ ~ .1 .1 .1 0 10
 
execute at @e[tag=glitchcurtainl,team=blue] run summon armor_stand ~ ~-5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["glitchcurtainfall"],Team:"blue"}
execute at @e[tag=glitchcurtainr,team=blue] run summon armor_stand ~ ~-5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["glitchcurtainfall"],Team:"blue"}

execute as @e[tag=glitchcurtainfall] at @s run tp @s ~ ~-.5 ~

execute at @e[tag=glitchcurtainfall,team=blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["glitchcurtainwall"],Team:"blue"}
execute at @e[tag=glitchcurtainwall] positioned ~ ~5 ~ run particle dust_color_transition 6 0.6 6 2 3 0.4 3 ~ ~ ~ 0 0 0 0 1

execute as @e[tag=glitchcurtainl] at @s run tp @s ^.5 ^ ^
execute as @e[tag=glitchcurtainr] at @s run tp @s ^-.5 ^ ^

execute at @e[tag=glitchcurtainwall,team=blue] positioned ~ ~5 ~ as @e[distance=..1] run scoreboard players set @s glitchpoisonlast 100
execute at @e[tag=glitchcurtainwall,team=blue] positioned ~ ~5 ~ as @e[distance=..1,team=!blue] run effect give @s slowness 1 0 true



execute as @e[tag=glitchbomb,team=red] at @s if score @s power2last matches 100.. run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["glitchcurtainl"],Team:"red"}
execute as @e[tag=glitchbomb,team=red] at @s if score @s power2last matches 100.. run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["glitchcurtainr"],Team:"red"}

execute as @e[tag=glitchbomb,team=red] at @s if score @s power2last matches 100.. run tp @e[tag=glitchcurtainr,team=red] ~ ~ ~ ~ ~
execute as @e[tag=glitchbomb,team=red] at @s if score @s power2last matches 100.. run tp @e[tag=glitchcurtainl,team=red] ~ ~ ~ ~ ~


execute at @e[tag=glitchcurtainl,team=red] run summon armor_stand ~ ~-5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["glitchcurtainfall"],Team:"red"}
execute at @e[tag=glitchcurtainr,team=red] run summon armor_stand ~ ~-5 ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["glitchcurtainfall"],Team:"red"}

execute at @e[tag=glitchcurtainfall,team=red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["glitchcurtainwall"],Team:"red"}

execute at @e[tag=glitchcurtainwall,team=red] positioned ~ ~5 ~ as @e[distance=..1] run scoreboard players set @s glitchpoisonlast 100
execute at @e[tag=glitchcurtainwall,team=red] positioned ~ ~5 ~ as @e[distance=..1,team=!red] run effect give @s slowness 1 0 true


execute as @e[tag=glitchbomb] if score @s power2last matches 100.. run kill @s

#execute as @e[tag=glitchbomb] at @s unless block ^ ^ ^.5 air run particle dust_color_transition .23 .7 1.6 1.5 3 .5 .8 ~ ~ ~ 2 2 2 0 100
#execute as @e[tag=glitchbomb] at @s unless block ^ ^ ^.5 air run scoreboard players set @e[team=!blue,distance=..5] glitchpoisonlast 100
#execute as @e[tag=glitchbomb] at @s unless block ^ ^ ^.5 air run kill @s


execute at @e[tag=glitchbomb] run particle enchant ~ ~ ~ .1 .1 .1 0 10

execute at @e[tag=glitchspike] run particle minecraft:dust_color_transition 2 .4 .3 1.3 1.549 .8 2 ~ ~1 ~ 0 .5 0 0 5

#execute as @e[tag= glitchspike] at @s run tp @s ^1 ^ ^ facing entity @a[tag=glitch,team=blue,sort=nearest,limit=1]
##
execute as @e if score @s glitchpoisonlast matches 1.. if score @s dmgtaken matches 1.. run scoreboard players set @s glitchpoisonspli 80

    #execute as @e at @s if score @s glitchpoisonspli matches 1.. as @e if score @s glitchpoisonlast matches 1.. run damage @s 1 magic
#
execute as @e at @s if score @s glitchpoisonspli matches 1.. run scoreboard players add @s glitchpoisonlast 1
execute as @e at @s if score @s glitchpoisonspli matches 1.. run scoreboard players add @s dmgtaken 1


scoreboard players remove @e glitchpoisonspli 1

scoreboard players remove @e glitchpoisonlast 1

execute as @e if score @s glitchpoisonlast matches ..0 run scoreboard players set @s glitchpoisonlast 0

execute as @e at @s if score @s glitchultmoments matches 1..2 run particle dust 0 2 0 1 ~ ~1 ~ .2 .5 .2 0 10
execute as @e at @s if score @s glitchultmoments matches 3..4 run particle dust 0.878 1 0.18 1 ~ ~1 ~ .2 .5 .2 0 10
execute as @e at @s if score @s glitchultmoments matches 5..7 run particle dust 0.706 0 0 1 ~ ~1 ~ .2 .5 .2 0 10
execute as @e at @s if score @s glitchultmoments matches 8.. run particle dust 1 0 0.831 1 ~ ~1 ~ .2 .5 .2 0 10

##
#execute as @e[team=!blue] if score @s dmgtaken matches 1.. run damage @e[tag=glitch,team=blue] -1

execute as @s if score @s dmgtaken matches 1.. run scoreboard players add @s timeshit 1

scoreboard players set @a[tag=glitcharea] power1cd 5
scoreboard players set @a[tag=glitcharea] power2cd 5
scoreboard players set @a[tag=glitcharea] power3cd 5



execute as @e[tag=glitcharea] at @s if score @s glitchulthitimes matches 0 run particle portal ~ ~1 ~ 0 0 0 5 1000

execute as @e[tag=glitcharea] if score @s glitchulthitimes matches ..0 run scoreboard players remove @s glitchulthitimes 1

execute as @e[tag=glitcharea] if score @s glitchulthitimes matches ..0 unless entity @e[tag=glitchslash] run function bored:glitch/glitchultclose

execute as @a[tag=glitcharea] at @s if score @s glitchulthitimes matches 1.. run particle dust_color_transition 1 2.5 7 .7 .6 1 5.6 ~ ~1 ~ 20 20 20 0 1000

#kill @e[type=armor_stand]

execute if score @s[team=blue] power3cd matches 1 at @s run effect give @e[team=!blue,distance=..10] instant_damage 1 0 true
execute if score @s[team=red] power3cd matches 1 at @s run effect give @e[team=!red,distance=..10] instant_damage 1 0 true
execute if score @s power3cd matches 1 at @s run particle end_rod ~ ~1 ~ 0 0 0 1 200


execute as @e[team=!blue] if score @s dmgtaken matches 1.. run effect give @e[tag=glitch,team=blue,nbt=!{active_effects:[{id:"minecraft:regeneration"}]}] regeneration 2 3 true


execute as @e[team=!red] if score @s dmgtaken matches 1.. run effect give @e[tag=glitch,team=red,nbt=!{active_effects:[{id:"minecraft:regeneration"}]}] regeneration 2 3 true


execute as @s[team=blue] if entity @e[tag=glitchbomb,team=blue] run scoreboard players set @s power2cd 5
execute as @s[team=red] if entity @e[tag=glitchbomb,team=red] run scoreboard players set @s power2cd 5

tag @a[tag=glitch] remove p1
tag @a[tag=glitch] remove p2
tag @a[tag=glitch] remove p3
tag @a[tag=glitch] remove p4