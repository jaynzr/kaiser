execute as @s[team=blue] at @s as @e[tag=cardecho,team=blue,limit=1,sort=nearest] at @s unless entity @e[distance=..1,tag=cardbomb,team=blue] run summon armor_stand ~ ~ ~ {Team:"blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["cardbomb","echoed"],Small:1b}


execute as @s[team=red] at @s as @e[tag=cardecho,team=red,limit=1,sort=nearest] at @s unless entity @e[distance=..1,tag=cardbomb,team=blue] run summon armor_stand ~ ~ ~ {Team:"red",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["cardbomb","echoed"],Small:1b}