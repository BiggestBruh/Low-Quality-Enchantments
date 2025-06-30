# Cavalry
# Increase attack damage for all players riding a horse that has the Cavalry enchantment
execute as @a[predicate=lqe:cavalry/1] run attribute @s minecraft:attack_damage modifier add lqe:enchantment.cavalry 2 add_value
execute as @a[predicate=lqe:cavalry/2] run attribute @s minecraft:attack_damage modifier add lqe:enchantment.cavalry 4 add_value
execute as @a[predicate=lqe:cavalry/3] run attribute @s minecraft:attack_damage modifier add lqe:enchantment.cavalry 6 add_value
execute as @a[predicate=lqe:cavalry/4] run attribute @s minecraft:attack_damage modifier add lqe:enchantment.cavalry 8 add_value
execute as @a[predicate=lqe:cavalry/5] run attribute @s minecraft:attack_damage modifier add lqe:enchantment.cavalry 10 add_value
execute as @a[predicate=lqe:cavalry/6] run attribute @s minecraft:attack_damage modifier add lqe:enchantment.cavalry 12 add_value
execute as @a[predicate=lqe:cavalry/7] run attribute @s minecraft:attack_damage modifier add lqe:enchantment.cavalry 14 add_value
# Remove the attack damage increase for all players not riding a horse with the Cavalry enchantment
execute as @a[predicate=!lqe:cavalry/cavalry] run attribute @s minecraft:attack_damage modifier remove lqe:enchantment.cavalry

schedule function lqe:scheduled/1s 1s