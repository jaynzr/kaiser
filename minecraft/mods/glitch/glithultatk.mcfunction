scoreboard players add @s glitchulthitwhic 1
execute as @s if score @s glitchulthitwhic matches 3.. run scoreboard players set @s glitchulthitwhic 0

execute at @s[team=blue] if score @s glitchulthitwhic matches 0 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["glitchslash1","glitchslash"],Team:blue}
execute at @s[team=blue] if score @s glitchulthitwhic matches 1 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["glitchslash2",glitchslash],Team:blue}
execute at @s[team=blue] if score @s glitchulthitwhic matches 2 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["glitchslash3",glitchslash],Team:blue}
#execute as @s at @s anchored eyes run particle end_rod ^ ^ ^3 1 1 1 .2 10

execute at @s[team=blue] anchored eyes run tp @e[tag=glitchslash,limit=1,sort=nearest,team=blue] ~ ~ ~ ~ ~

execute at @s[team=red] if score @s glitchulthitwhic matches 0 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["glitchslash1","glitchslash"],Team:red}
execute at @s[team=red] if score @s glitchulthitwhic matches 1 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["glitchslash2",glitchslash],Team:red}
execute at @s[team=red] if score @s glitchulthitwhic matches 2 run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["glitchslash3",glitchslash],Team:red}

execute at @s[team=red] anchored eyes run tp @e[tag=glitchslash,limit=1,sort=nearest,team=red] ~ ~ ~ ~ ~

scoreboard players remove @s glitchulthitimes 1
#execute at @e[tag=glitchslash] anchored eyes positioned ^ ^ ^2 as @e[team=!blue,distance=..8] run damage @s 3 magic