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

# Rebirth
# Upon respawn, give effects to players who had the Rebirth enchantment on death
execute as @e[type=player,advancements={lqe:technical/die=true},scores={lqe.rebirth.duration=1..}] run function lqe:rebirth/give_effects/start with entity @s
# Clear player's stored Rebirth score if they do not have the enchantment
execute as @e[type=player,predicate=!lqe:rebirth/rebirth,scores={lqe.rebirth.duration=1..}] run scoreboard players set @s lqe.rebirth.duration 0

# Curse of Volatility
# Clear player's stored Volatile level if they do not have the enchantment
execute as @e[type=player,predicate=!lqe:volatile/volatile] run scoreboard players set @s lqe.volatile.level 0

# Revoke death advancement so it can be re-triggered later
execute as @e[type=player,advancements={lqe:technical/die=true}] run advancement revoke @s only lqe:technical/die

# Sturdy
# If player is holding an unmodified Shield with the Sturdy enchantment in their mainhand, modify it
execute as @a[predicate=lqe:sturdy/mainhand/unmodified] run item modify entity @s weapon.mainhand lqe:sturdy/modify_mainhand
# If player is holding a modified Shield but it has no Sturdy enchantment (it's been disenchanted), revert it
execute as @a[predicate=lqe:sturdy/mainhand/demodify] run item modify entity @s weapon.mainhand lqe:sturdy/revert
# Same shit, different hand
execute as @a[predicate=lqe:sturdy/offhand/unmodified] run item modify entity @s weapon.offhand lqe:sturdy/modify_offhand
execute as @a[predicate=lqe:sturdy/offhand/demodify] run item modify entity @s weapon.offhand lqe:sturdy/revert

# Parry
# If player is holding an unmodified weapon with the Parry enchantment in their mainhand, modify it
execute as @a[predicate=lqe:parry/unmodified] run item modify entity @s weapon.mainhand lqe:parry/modify
# If player is holding a modified weapon but it has no Parry enchantment (it's been disenchanted), revert it
execute as @a[predicate=lqe:parry/demodify] run item modify entity @s weapon.mainhand lqe:parry/revert

# Cleaving
# If player is holding an unmodified weapon with the Cleaving enchantment in their mainhand, modify it
execute as @a[predicate=lqe:cleaving/unmodified] run item modify entity @s weapon.mainhand lqe:cleaving/modify
# If player is holding an modified weapon but it has no Cleaving enchantment (it's been disenchanted), revert it
execute as @a[predicate=lqe:cleaving/demodify] run item modify entity @s weapon.mainhand lqe:cleaving/revert

# Sniper
# Restore arrow's gravity if it has landed or slowed down substantially
execute as @e[type=#minecraft:arrows,tag=lqe.sniper,predicate=lqe:sniper/landed] run function lqe:sniper/unsniper
execute as @e[type=#minecraft:arrows,tag=lqe.sniper,predicate=lqe:sniper/slowed] run function lqe:sniper/unsniper

# Storm
# Summon a thunderstorm if a Storm enchanted trident is above y=256
execute as @e[type=minecraft:trident,tag=lqe.storm,predicate=lqe:storm] run weather thunder

# Bash
# If player is holding an unmodified shield with the Bash enchantment in their mainhand, modify it
execute as @a[predicate=lqe:bash/unmodified] run item modify entity @s weapon.mainhand lqe:bash/modify
# If player is holding a modified shield but it has no Bash enchantment (it's been disenchanted), revert it
execute as @a[predicate=lqe:bash/demodify] run item modify entity @s weapon.mainhand lqe:bash/revert

schedule function lqe:scheduled/1s 1s