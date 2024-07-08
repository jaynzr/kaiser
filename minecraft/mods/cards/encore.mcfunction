execute as @s[team=blue] at @e[tag=cardecho,team=blue] run summon armor_stand ~ ~ ~ {Team:"blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["cardbomb","active","echoed"],Small:1b}
execute as @s[team=blue] at @e[tag=cardecho,team=red] run summon armor_stand ~ ~ ~ {Team:"red",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["cardbomb","active","echoed"],Small:1b}


scoreboard players remove @s encoretime 1
scoreboard players set @s ultlast 0