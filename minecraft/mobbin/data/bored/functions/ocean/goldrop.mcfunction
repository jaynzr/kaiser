execute at @s run summon item ~ ~ ~ {Item:{id:"gold_nugget",Count:3b}}
scoreboard players remove @s fakewurmdrop 1
execute as @s if score @s fakewurmdrop matches 1.. run function bored:ocean/goldrop