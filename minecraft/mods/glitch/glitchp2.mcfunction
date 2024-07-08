execute as @s[team=blue] at @s run summon armor_stand ~ ~ ~ {Team:"blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["glitchbomb"]}

execute as @s[team=red] at @s run summon armor_stand ~ ~ ~ {Team:"red",NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["glitchbomb"]}

execute at @s[team=blue] run tp @e[tag=glitchbomb,team=blue] ~ ~1.5 ~ ~ ~
execute at @s[team=red] run tp @e[tag=glitchbomb,team=red] ~ ~1.5 ~ ~ ~
#execute at @s run scoreboard players set @e[distance=..5,team=!blue] glitchpoisonlast 100
#scoreboard players set @s glitchpoisonsplit 60

