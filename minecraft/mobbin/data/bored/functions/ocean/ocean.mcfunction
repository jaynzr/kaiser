function bored:ocean/wurm
function bored:ocean/echolocation
function bored:ocean/glowing

execute as @e[type=guardian] at @s unless entity @a[distance=..12] run effect give @s invisibility 1 1 true

#execute as @a at @s if block ~ ~ ~ water if block ~ ~-.1 ~ water run tp @s ~ ~-.07 ~
execute as @e[type=squid,tag=spawned] at @s if biome ~ ~ ~ #is_deep_ocean run summon glow_squid
execute as @e[type=squid,tag=spawned] at @s if biome ~ ~ ~ #is_deep_ocean run tp @s ~ ~-10000 ~
execute as @e[type=squid,tag=spawned] at @s if biome ~ ~ ~ #is_deep_ocean run kill @s


execute as @a[nbt=!{Inventory:[{Slot:103b,id:"minecraft:golden_helmet"},{Slot:102b,id:"minecraft:golden_chestplate"},{Slot:101b,id:"minecraft:golden_leggings"},{Slot:100b,id:"minecraft:golden_boots"}]}] at @s if score @s height matches ..47 if block ~ ~ ~ water if block ~ ~1 ~ light[waterlogged=true] run effect give @s wither 2 3 true
execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet"},{Slot:102b,id:"minecraft:golden_chestplate"},{Slot:101b,id:"minecraft:golden_leggings"},{Slot:100b,id:"minecraft:golden_boots"}]},nbt=!{ActiveEffects:[{Id:13}]}] run effect give @s water_breathing 3 1 true
execute as @a at @s if score @s height matches ..47 if block ~ ~ ~ water if block ~ ~1 ~ light[waterlogged=true] if block ~ ~-.07 ~ water run tp @s ~ ~-.07 ~

effect give @e[type=dolphin] water_breathing 2 1 true