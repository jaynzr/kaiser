item replace entity @a[tag=squirter] hotbar.0 with trident{display:{Name:'{"text":"WATERGUN","color":"gray","bold":true,"italic":true,"underlined":true}',Lore:['{"text":"pewpew"}']},Unbreakable:1b,Enchantments:[{id:"minecraft:loyalty",lvl:1s},{id:"minecraft:riptide",lvl:3s}],watergun:1b} 1

execute as @e[type=item,nbt={Item:{tag:{watergun:1b}}}] unless entity @e[tag=coom] run tag @a[tag=squirter] add squirts
kill @e[type=item,nbt={Item:{tag:{watergun:1b}}}]





execute as @a[tag=squirter] at @s if score @s chargetrident matches 1.. unless block ~ ~-.1 ~ air run effect give @p levitation 1 254 true
execute as @a unless block ~ ~-.1 ~ air run scoreboard players set @s chargetrident 0
execute as @a[tag=squirter] at @s if score @s snek matches 1.. if block ~ ~ ~ air run effect give @p levitation 1 2 true
execute as @a[tag=squirter] at @s if score @s snek matches 1.. if block ~ ~ ~ air if block ~ ~-1 ~ air run summon armor_stand ~ ~-1 ~ {NoGravity:1b,Invulnerable:1b,HasVisualFire:0b,Invisible:1b,Tags:["waterfountain"]}
execute as @a[tag=squirter] at @s if score @s snek matches 1.. at @e[tag=waterfountain] run setblock ~ ~ ~ water

execute as @a[tag=squirter] at @s if score @s snek matches ..0 at @e[tag=waterfountain] if block ~ ~ ~ water run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace water


execute as @a[tag=squirter] at @s if score @s snek matches ..0 at @e[tag=waterfountain] run kill @e[tag=waterfountain]
execute as @a[tag=squirter] at @s if score @s snek matches ..0 run effect clear @s levitation

scoreboard players set @a snek 0


function bored:squirter/squirter
