
function bored:plaent

execute as @e store result score @s helth run data get entity @s Health

tag @e[type=!armor_stand] remove plaentinfect
execute as @e[type=!armor_stand] if score @s helth matches ..5 run tag @s add plaentinfect
#effect give @e[tag=plaentinfect] glowing 1 1 true

execute as @a if score @s roothit matches 1.. run scoreboard players remove @s roothit 1
execute as @a if score @s roothit matches 300.. run tag @s add plaenttarget
execute as @a unless score @s roothit matches 1.. run tag @s remove plaenttarget
execute as @a at @s unless entity @e[tag=plaent,distance=..28] run tag @s remove plaenttarget
