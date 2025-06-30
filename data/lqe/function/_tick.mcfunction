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

# Luminance
# Kill expired markers, then mark all new markers as expired for killing in the next tick
execute as @e[type=marker,tag=lqe.luminance.expired] at @s run function lqe:luminance/kill
execute as @e[type=marker,tag=lqe.luminance.marker.1] run tag @s add lqe.luminance.expired
execute as @e[type=marker,tag=lqe.luminance.marker.2] run tag @s add lqe.luminance.expired
execute as @e[type=marker,tag=lqe.luminance.marker.3] run tag @s add lqe.luminance.expired

# Flee
# Decrement the Flee effect timer
execute as @a[tag=lqe.flee,scores={lqe.flee.timer=1..}] run scoreboard players remove @s lqe.flee.timer 1
execute as @a[tag=lqe.flee,scores={lqe.flee.timer=0}] at @s run function lqe:flee/debuff

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

# Smoke
# Handle Smoke effect timer
execute as @e[type=!#lqe:immune_to_smoke,scores={lqe.smoke=1..}] run scoreboard players remove @s lqe.smoke 1
execute as @e[type=!#lqe:immune_to_smoke,scores={lqe.smoke=1}] run attribute @s minecraft:follow_range modifier remove lqe:enchantment.smoke

# Sniper
# Restore arrow's gravity if it has landed or slowed down substantially
execute as @e[type=#minecraft:arrows,tag=lqe.sniper,predicate=lqe:sniper/landed] run function lqe:sniper/unsniper
execute as @e[type=#minecraft:arrows,tag=lqe.sniper,predicate=lqe:sniper/slowed] run function lqe:sniper/unsniper

# Bleeding
execute as @e[type=!#lqe:immune_to_bleeding,scores={lqe.bleeding.1=1..}] run function lqe:bleeding/damage/lvl_1
execute as @e[type=!#lqe:immune_to_bleeding,scores={lqe.bleeding.2=1..}] run function lqe:bleeding/damage/lvl_2
execute as @e[type=!#lqe:immune_to_bleeding,scores={lqe.bleeding.3=1..}] run function lqe:bleeding/damage/lvl_3
execute as @e[type=!#lqe:immune_to_bleeding,scores={lqe.bleeding.4=1..}] run function lqe:bleeding/damage/lvl_4
execute as @e[type=!#lqe:immune_to_bleeding,scores={lqe.bleeding.5=1..}] run function lqe:bleeding/damage/lvl_5
execute as @e[type=!#lqe:immune_to_bleeding,scores={lqe.bleeding.6=1..}] run function lqe:bleeding/damage/lvl_6
execute as @e[type=!#lqe:immune_to_bleeding,scores={lqe.bleeding.7=1..}] run function lqe:bleeding/damage/lvl_7
# End the bleeding effect if the player has died
execute as @a[advancements={lqe:technical/die=true}] run scoreboard players reset @s lqe.bleeding.1
execute as @a[advancements={lqe:technical/die=true}] run scoreboard players reset @s lqe.bleeding.2
execute as @a[advancements={lqe:technical/die=true}] run scoreboard players reset @s lqe.bleeding.3
execute as @a[advancements={lqe:technical/die=true}] run scoreboard players reset @s lqe.bleeding.4
execute as @a[advancements={lqe:technical/die=true}] run scoreboard players reset @s lqe.bleeding.5
execute as @a[advancements={lqe:technical/die=true}] run scoreboard players reset @s lqe.bleeding.6
execute as @a[advancements={lqe:technical/die=true}] run scoreboard players reset @s lqe.bleeding.7

# Storm
# Summon a thunderstorm if a Storm enchanted trident is above y=256
execute as @e[type=minecraft:trident,tag=lqe.storm,predicate=lqe:storm] run weather thunder

# Bash
# If player is holding an unmodified shield with the Bash enchantment in their mainhand, modify it
execute as @a[predicate=lqe:bash/unmodified] run item modify entity @s weapon.mainhand lqe:bash/modify
# If player is holding a modified shield but it has no Bash enchantment (it's been disenchanted), revert it
execute as @a[predicate=lqe:bash/demodify] run item modify entity @s weapon.mainhand lqe:bash/revert

# Hook
# If a non-hooked entity is close to a fishing bobber from a Hook enchanted fishing rod, mark them as hooked and deal damage
execute as @e[type=!minecraft:fishing_bobber,tag=!lqe.hook.hooked.1] at @s anchored eyes positioned ^ ^ ^ if entity @e[type=minecraft:fishing_bobber,tag=lqe.hook.1,distance=...3] run function lqe:hook/hook/lvl_1
execute as @e[type=!minecraft:fishing_bobber,tag=!lqe.hook.hooked.2] at @s anchored eyes positioned ^ ^ ^ if entity @e[type=minecraft:fishing_bobber,tag=lqe.hook.2,distance=...3] run function lqe:hook/hook/lvl_2
execute as @e[type=!minecraft:fishing_bobber,tag=!lqe.hook.hooked.3] at @s anchored eyes positioned ^ ^ ^ if entity @e[type=minecraft:fishing_bobber,tag=lqe.hook.3,distance=...3] run function lqe:hook/hook/lvl_3
execute as @e[type=!minecraft:fishing_bobber,tag=!lqe.hook.hooked.4] at @s anchored eyes positioned ^ ^ ^ if entity @e[type=minecraft:fishing_bobber,tag=lqe.hook.4,distance=...3] run function lqe:hook/hook/lvl_4
execute as @e[type=!minecraft:fishing_bobber,tag=!lqe.hook.hooked.5] at @s anchored eyes positioned ^ ^ ^ if entity @e[type=minecraft:fishing_bobber,tag=lqe.hook.5,distance=...3] run function lqe:hook/hook/lvl_5
# If a hooked entity no longer has a fishing bobber near them, mark them as unhooked and deal damage
execute as @e[type=!minecraft:fishing_bobber,tag=lqe.hook.hooked.1] at @s anchored eyes positioned ^ ^ ^ unless entity @e[type=minecraft:fishing_bobber,distance=...3] run function lqe:hook/unhook/lvl_1
execute as @e[type=!minecraft:fishing_bobber,tag=lqe.hook.hooked.2] at @s anchored eyes positioned ^ ^ ^ unless entity @e[type=minecraft:fishing_bobber,distance=...3] run function lqe:hook/unhook/lvl_2
execute as @e[type=!minecraft:fishing_bobber,tag=lqe.hook.hooked.3] at @s anchored eyes positioned ^ ^ ^ unless entity @e[type=minecraft:fishing_bobber,distance=...3] run function lqe:hook/unhook/lvl_3
execute as @e[type=!minecraft:fishing_bobber,tag=lqe.hook.hooked.4] at @s anchored eyes positioned ^ ^ ^ unless entity @e[type=minecraft:fishing_bobber,distance=...3] run function lqe:hook/unhook/lvl_4
execute as @e[type=!minecraft:fishing_bobber,tag=lqe.hook.hooked.5] at @s anchored eyes positioned ^ ^ ^ unless entity @e[type=minecraft:fishing_bobber,distance=...3] run function lqe:hook/unhook/lvl_5

# Timber
# Prevent Timber from taking effect when sneaking
execute as @a[predicate=lqe:sneak] run function lqe:timber/sneak
# If limit for blocks broken with Timber is reached, wait a tick to let Timber functions stop and then reset the block limit counter
scoreboard players add @a lqe.timber.wait 1
execute as @a[tag=lqe.timber.stop,scores={lqe.timber.wait=2}] run scoreboard players reset @s lqe.timber.blocks
execute as @a[tag=lqe.timber.stop,scores={lqe.timber.wait=2}] run tag @s remove lqe.timber.stop
# Activate the Timber effect
# Oak
execute as @a[scores={lqe.timber.oak=1..},predicate=!lqe:sneak,predicate=lqe:timber] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:timber/first/oak
execute as @a[scores={lqe.timber.oak=1..},predicate=!lqe:timber] run scoreboard players reset @s lqe.timber.oak
# Spruce
execute as @a[scores={lqe.timber.spruce=1..},predicate=!lqe:sneak,predicate=lqe:timber] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:timber/first/spruce
execute as @a[scores={lqe.timber.spruce=1..},predicate=!lqe:timber] run scoreboard players reset @s lqe.timber.spruce
# Birch
execute as @a[scores={lqe.timber.birch=1..},predicate=!lqe:sneak,predicate=lqe:timber] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:timber/first/birch
execute as @a[scores={lqe.timber.birch=1..},predicate=!lqe:timber] run scoreboard players reset @s lqe.timber.birch
# Jungle
execute as @a[scores={lqe.timber.jungle=1..},predicate=!lqe:sneak,predicate=lqe:timber] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:timber/first/jungle
execute as @a[scores={lqe.timber.jungle=1..},predicate=!lqe:timber] run scoreboard players reset @s lqe.timber.jungle
# Acacia
execute as @a[scores={lqe.timber.acacia=1..},predicate=!lqe:sneak,predicate=lqe:timber] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:timber/first/acacia
execute as @a[scores={lqe.timber.acacia=1..},predicate=!lqe:timber] run scoreboard players reset @s lqe.timber.acacia
# Dark Oak
execute as @a[scores={lqe.timber.dark_oak=1..},predicate=!lqe:sneak,predicate=lqe:timber] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:timber/first/dark_oak
execute as @a[scores={lqe.timber.dark_oak=1..},predicate=!lqe:timber] run scoreboard players reset @s lqe.timber.dark_oak
# Mangrove
execute as @a[scores={lqe.timber.mangrove=1..},predicate=!lqe:sneak,predicate=lqe:timber] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:timber/first/mangrove
execute as @a[scores={lqe.timber.mangrove=1..},predicate=!lqe:timber] run scoreboard players reset @s lqe.timber.mangrove
execute as @a[scores={lqe.timber.mangrove_roots=1..},predicate=!lqe:sneak,predicate=lqe:timber] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:timber/first/mangrove
execute as @a[scores={lqe.timber.mangrove_roots=1..},predicate=!lqe:timber] run scoreboard players reset @s lqe.timber.mangrove_roots
# Cherry
execute as @a[scores={lqe.timber.cherry=1..},predicate=!lqe:sneak,predicate=lqe:timber] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:timber/first/cherry
execute as @a[scores={lqe.timber.cherry=1..},predicate=!lqe:timber] run scoreboard players reset @s lqe.timber.cherry
# Pale Oak
execute as @a[scores={lqe.timber.pale_oak=1..},predicate=!lqe:sneak,predicate=lqe:timber] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:timber/first/pale_oak
execute as @a[scores={lqe.timber.pale_oak=1..},predicate=!lqe:timber] run scoreboard players reset @s lqe.timber.pale_oak
# Crimson
execute as @a[scores={lqe.timber.crimson=1..},predicate=!lqe:sneak,predicate=lqe:timber] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:timber/first/crimson
execute as @a[scores={lqe.timber.crimson=1..},predicate=!lqe:timber] run scoreboard players reset @s lqe.timber.crimson
# Warped
execute as @a[scores={lqe.timber.warped=1..},predicate=!lqe:sneak,predicate=lqe:timber] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:timber/first/warped
execute as @a[scores={lqe.timber.warped=1..},predicate=!lqe:timber] run scoreboard players reset @s lqe.timber.warped
# Mushroom
execute as @a[scores={lqe.timber.mushroom=1..},predicate=!lqe:sneak,predicate=lqe:timber] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:timber/first/mushroom
execute as @a[scores={lqe.timber.mushroom=1..},predicate=!lqe:timber] run scoreboard players reset @s lqe.timber.mushroom

# Veinminer
# Prevent Veinminer from taking effect when sneaking
execute as @a[predicate=lqe:sneak] run function lqe:veinminer/sneak
# If limit for blocks broken with Veinminer is reached, wait a tick to let Veinminer functions stop and then reset the block limit counter
scoreboard players add @a lqe.veinminer.wait 1
execute as @a[tag=lqe.veinminer.stop,scores={lqe.veinminer.wait=2}] run scoreboard players reset @s lqe.veinminer.blocks
execute as @a[tag=lqe.veinminer.stop,scores={lqe.veinminer.wait=2}] run tag @s remove lqe.veinminer.stop
# Activate the Veinminer effect
# Coal
execute as @a[scores={lqe.veinminer.coal=1..},predicate=!lqe:sneak,predicate=lqe:veinminer] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:veinminer/first/coal
execute as @a[scores={lqe.veinminer.coal=1..},predicate=!lqe:veinminer] run scoreboard players reset @s lqe.veinminer.coal
# Copper
execute as @a[scores={lqe.veinminer.copper=1..},predicate=!lqe:sneak,predicate=lqe:veinminer] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:veinminer/first/copper
execute as @a[scores={lqe.veinminer.copper=1..},predicate=!lqe:veinminer] run scoreboard players reset @s lqe.veinminer.copper
# Iron
execute as @a[scores={lqe.veinminer.iron=1..},predicate=!lqe:sneak,predicate=lqe:veinminer] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:veinminer/first/iron
execute as @a[scores={lqe.veinminer.iron=1..},predicate=!lqe:veinminer] run scoreboard players reset @s lqe.veinminer.iron
# Gold
execute as @a[scores={lqe.veinminer.gold=1..},predicate=!lqe:sneak,predicate=lqe:veinminer] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:veinminer/first/gold
execute as @a[scores={lqe.veinminer.gold=1..},predicate=!lqe:veinminer] run scoreboard players reset @s lqe.veinminer.gold
# Redstone
execute as @a[scores={lqe.veinminer.redstone=1..},predicate=!lqe:sneak,predicate=lqe:veinminer] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:veinminer/first/redstone
execute as @a[scores={lqe.veinminer.redstone=1..},predicate=!lqe:veinminer] run scoreboard players reset @s lqe.veinminer.redstone
# Lapis
execute as @a[scores={lqe.veinminer.lapis=1..},predicate=!lqe:sneak,predicate=lqe:veinminer] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:veinminer/first/lapis
execute as @a[scores={lqe.veinminer.lapis=1..},predicate=!lqe:veinminer] run scoreboard players reset @s lqe.veinminer.lapis
# Diamond
execute as @a[scores={lqe.veinminer.diamond=1..},predicate=!lqe:sneak,predicate=lqe:veinminer] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:veinminer/first/diamond
execute as @a[scores={lqe.veinminer.diamond=1..},predicate=!lqe:veinminer] run scoreboard players reset @s lqe.veinminer.diamond
# Emerald
execute as @a[scores={lqe.veinminer.emerald=1..},predicate=!lqe:sneak,predicate=lqe:veinminer] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:veinminer/first/emerald
execute as @a[scores={lqe.veinminer.emerald=1..},predicate=!lqe:veinminer] run scoreboard players reset @s lqe.veinminer.emerald
# Deepslate Coal
execute as @a[scores={lqe.veinminer.deep_coal=1..},predicate=!lqe:sneak,predicate=lqe:veinminer] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:veinminer/first/deep_coal
execute as @a[scores={lqe.veinminer.deep_coal=1..},predicate=!lqe:veinminer] run scoreboard players reset @s lqe.veinminer.deep_coal
# Deepslate Copper
execute as @a[scores={lqe.veinminer.deep_copper=1..},predicate=!lqe:sneak,predicate=lqe:veinminer] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:veinminer/first/deep_copper
execute as @a[scores={lqe.veinminer.deep_copper=1..},predicate=!lqe:veinminer] run scoreboard players reset @s lqe.veinminer.deep_copper
# Deepslate Iron
execute as @a[scores={lqe.veinminer.deep_iron=1..},predicate=!lqe:sneak,predicate=lqe:veinminer] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:veinminer/first/deep_iron
execute as @a[scores={lqe.veinminer.deep_iron=1..},predicate=!lqe:veinminer] run scoreboard players reset @s lqe.veinminer.deep_iron
# Deepslate Gold
execute as @a[scores={lqe.veinminer.deep_gold=1..},predicate=!lqe:sneak,predicate=lqe:veinminer] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:veinminer/first/deep_gold
execute as @a[scores={lqe.veinminer.deep_gold=1..},predicate=!lqe:veinminer] run scoreboard players reset @s lqe.veinminer.deep_gold
# Deepslate Redstone
execute as @a[scores={lqe.veinminer.deep_redstone=1..},predicate=!lqe:sneak,predicate=lqe:veinminer] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:veinminer/first/deep_redstone
execute as @a[scores={lqe.veinminer.deep_redstone=1..},predicate=!lqe:veinminer] run scoreboard players reset @s lqe.veinminer.deep_redstone
# Deepslate Lapis
execute as @a[scores={lqe.veinminer.deep_lapis=1..},predicate=!lqe:sneak,predicate=lqe:veinminer] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:veinminer/first/deep_lapis
execute as @a[scores={lqe.veinminer.deep_lapis=1..},predicate=!lqe:veinminer] run scoreboard players reset @s lqe.veinminer.deep_lapis
# Deepslate Diamond
execute as @a[scores={lqe.veinminer.deep_diamond=1..},predicate=!lqe:sneak,predicate=lqe:veinminer] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:veinminer/first/deep_diamond
execute as @a[scores={lqe.veinminer.deep_diamond=1..},predicate=!lqe:veinminer] run scoreboard players reset @s lqe.veinminer.deep_diamond
# Deepslate Emerald
execute as @a[scores={lqe.veinminer.deep_emerald=1..},predicate=!lqe:sneak,predicate=lqe:veinminer] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:veinminer/first/deep_emerald
execute as @a[scores={lqe.veinminer.deep_emerald=1..},predicate=!lqe:veinminer] run scoreboard players reset @s lqe.veinminer.deep_emerald
# Nether Quartz
execute as @a[scores={lqe.veinminer.quartz=1..},predicate=!lqe:sneak,predicate=lqe:veinminer] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:veinminer/first/quartz
execute as @a[scores={lqe.veinminer.quartz=1..},predicate=!lqe:veinminer] run scoreboard players reset @s lqe.veinminer.quartz
# Nether Gold
execute as @a[scores={lqe.veinminer.nether_gold=1..},predicate=!lqe:sneak,predicate=lqe:veinminer] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:veinminer/first/nether_gold
execute as @a[scores={lqe.veinminer.nether_gold=1..},predicate=!lqe:veinminer] run scoreboard players reset @s lqe.veinminer.nether_gold
# Ancient Debris
execute as @a[scores={lqe.veinminer.debris=1..},predicate=!lqe:sneak,predicate=lqe:veinminer] at @s at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] align xyz run function lqe:veinminer/first/debris
execute as @a[scores={lqe.veinminer.debris=1..},predicate=!lqe:veinminer] run scoreboard players reset @s lqe.veinminer.debris



# For Runic Catalyst easter egg
# Edit unedited wandering traders
execute as @e[type=wandering_trader,tag=!lqe.runic_trade] run function lqe:runic_trade