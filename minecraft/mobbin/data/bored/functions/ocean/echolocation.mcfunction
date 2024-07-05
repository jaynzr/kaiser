tag @a remove echo
execute as @a[nbt={SelectedItem:{id:"minecraft:echo_shard"}}] at @s if block ~ ~1 ~ light[waterlogged=true] run tag @s add echo
scoreboard players add @a[tag=echo] echolocate 1
execute as @e[tag=echo] if score @s echolocate matches 60.. run function bored:ocean/echobounce
scoreboard players set @a[tag=!echo] echolocate 0