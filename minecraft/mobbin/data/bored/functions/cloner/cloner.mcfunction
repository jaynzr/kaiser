execute as @e[tag=cloner] at @s if entity @a[distance=..15] run scoreboard players add @s clonetimer 1
execute as @e[tag=cloner] at @s if score @s clonetimer matches 80.. at @e[type=zombie,distance=..5] run summon zombie ~ ~ ~ {Health:1f,Attributes:[{Name:"generic.max_health",Base:1}]}
execute as @e[tag=cloner] at @s if score @s clonetimer matches 80.. at @e[type=skeleton,tag=!cloner,distance=..5] run summon skeleton ~ ~ ~ {Health:1f,Attributes:[{Name:"generic.max_health",Base:1}],HandItems:[{id:"minecraft:bow",Count:1b},{}]}
execute as @e[tag=cloner] at @s if score @s clonetimer matches 80.. at @e[type=witch,tag=!cloner,distance=..5] run summon witch ~ ~ ~ {Health:1f,Attributes:[{Name:"generic.max_health",Base:1}]}
execute as @e[tag=cloner] at @s if score @s clonetimer matches 80.. at @e[type=creeper,tag=!cloner,distance=..5] run summon creeper ~ ~ ~ {Health:1f,Attributes:[{Name:"generic.max_health",Base:1}]}



execute as @e[tag=cloner] at @s if score @s clonetimer matches 80.. run scoreboard players set @s clonetimer 0

#effect give @e[tag=cloner] slowness 1 1 true