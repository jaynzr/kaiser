execute at @s[team=blue] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["glitchspikerota"],Team:"blue",}

execute at @s[team=red] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["glitchspikerota"],Team:"red",}

execute at @s[team=blue] as @e[tag=glitchspikerota,team=blue] run tp @s ~ ~ ~ ~ 0

execute at @s[team=red] as @e[tag=glitchspikerota,team=red] run tp @s ~ ~ ~ ~ 0

#execute at @s[team=red] as @e[tag=glitchspikerota,team=red] run tp @s ~ ~ ~ ~ 0

scoreboard players set @s power1cd 25