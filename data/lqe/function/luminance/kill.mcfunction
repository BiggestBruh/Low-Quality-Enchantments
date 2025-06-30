# Remove light
execute if block ~ ~ ~ light[waterlogged=true] run fill ~ ~ ~ ~ ~ ~ minecraft:water replace minecraft:light
execute if block ~ ~ ~ light[waterlogged=false] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:light

# Discard marker
kill @s