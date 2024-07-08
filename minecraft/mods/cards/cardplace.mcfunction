execute at @s[team=blue] run summon armor_stand ~ ~ ~ {Team:"blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["cardshoot"],Small:1b}
execute at @s[team=blue] as @e[tag=cardshoot,limit=1,sort=nearest] run tp @s ~ ~1 ~ ~ ~

execute at @s[team=red] run summon armor_stand ~ ~ ~ {Team:"red",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["cardshoot"],Small:1b}
execute at @s[team=red] as @e[tag=cardshoot,limit=1,sort=nearest] run tp @s ~ ~1 ~ ~ ~