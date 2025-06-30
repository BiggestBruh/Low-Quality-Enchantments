say Reloading LQE Enchantment Pack...
# Adding scoreboard objectives and data
scoreboard objectives add lqe.enchantment_level dummy
scoreboard objectives add lqe.deaths deathCount
scoreboard objectives add lqe.hp health
scoreboard objectives add lqe.gametime dummy
scoreboard objectives add lqe.gametime_temp dummy
# Custom damage trackers for advancement
scoreboard objectives add lqe.damage.bleeding dummy
scoreboard objectives add lqe.damage.hook dummy
scoreboard objectives add lqe.damage.pain dummy
# Easter Egg
scoreboard objectives add lqe.runic_roll dummy
# Starting scheduled functions
schedule function lqe:scheduled/2t 2t
schedule function lqe:scheduled/1s 1s
schedule function lqe:scheduled/2s 2s
# Constants
scoreboard objectives add lqe.const dummy
scoreboard players set #15 lqe.const 15
scoreboard players set #20 lqe.const 20
scoreboard players set #25 lqe.const 25
scoreboard players set #30 lqe.const 30
scoreboard players set #35 lqe.const 35
scoreboard players set #40 lqe.const 40
scoreboard players set #45 lqe.const 45
# Excavation
scoreboard objectives add lqe.excavation.durability dummy
scoreboard objectives add lqe.excavation.unbreaking_roll dummy
scoreboard objectives add lqe.excavation.iterator dummy
scoreboard objectives add lqe.excavation.axis dummy
# Curse of Clumsiness
data modify storage lqe:clumsy players set value []
scoreboard objectives add lqe.clumsiness.roll dummy
scoreboard objectives add lqe.clumsiness.result dummy
# Curse of Hallucination
scoreboard objectives add lqe.hallucination.roll dummy
# Rebirth
scoreboard objectives add lqe.rebirth.duration dummy
data modify storage lqe:rebirth players set value []
# Volatile
scoreboard objectives add lqe.volatile.level dummy
data modify storage lqe:volatile players set value []
# Magma Walker
scoreboard objectives add lqe.magma_walker.roll dummy
# Flee
scoreboard objectives add lqe.flee.timer dummy
# Spirit
scoreboard objectives add lqe.spirit.particles dummy
# Evolution
scoreboard objectives add lqe.evolution dummy
# Smoke
scoreboard objectives add lqe.smoke dummy
# Bleeding
scoreboard objectives add lqe.bleeding.armor dummy
scoreboard objectives add lqe.bleeding.1 dummy
scoreboard objectives add lqe.bleeding.2 dummy
scoreboard objectives add lqe.bleeding.3 dummy
scoreboard objectives add lqe.bleeding.4 dummy
scoreboard objectives add lqe.bleeding.5 dummy
scoreboard objectives add lqe.bleeding.6 dummy
scoreboard objectives add lqe.bleeding.7 dummy
scoreboard objectives add lqe.bleeding.mod dummy
# Ricochet
scoreboard objectives add lqe.ricochet.bounces dummy
scoreboard objectives add lqe.ricochet.dx dummy
scoreboard objectives add lqe.ricochet.dy dummy
scoreboard objectives add lqe.ricochet.dz dummy
# Swap
data modify storage lqe:swap thrower set value {}
data modify storage lqe:swap target set value {}
# Timber
scoreboard objectives add lqe.timber.oak minecraft.mined:minecraft.oak_log
scoreboard objectives add lqe.timber.spruce minecraft.mined:minecraft.spruce_log
scoreboard objectives add lqe.timber.birch minecraft.mined:minecraft.birch_log
scoreboard objectives add lqe.timber.jungle minecraft.mined:minecraft.jungle_log
scoreboard objectives add lqe.timber.acacia minecraft.mined:minecraft.acacia_log
scoreboard objectives add lqe.timber.dark_oak minecraft.mined:minecraft.dark_oak_log
scoreboard objectives add lqe.timber.mangrove minecraft.mined:minecraft.mangrove_log
scoreboard objectives add lqe.timber.mangrove_roots minecraft.mined:minecraft.mangrove_roots
scoreboard objectives add lqe.timber.cherry minecraft.mined:minecraft.cherry_log
scoreboard objectives add lqe.timber.pale_oak minecraft.mined:minecraft.pale_oak_log
scoreboard objectives add lqe.timber.crimson minecraft.mined:minecraft.crimson_stem
scoreboard objectives add lqe.timber.warped minecraft.mined:minecraft.warped_stem
scoreboard objectives add lqe.timber.mushroom minecraft.mined:minecraft.mushroom_stem
scoreboard objectives add lqe.timber.wait dummy
scoreboard objectives add lqe.timber.blocks dummy
scoreboard objectives add lqe.timber.unbreaking_roll dummy
# Veinminer
scoreboard objectives add lqe.veinminer.coal minecraft.mined:minecraft.coal_ore
scoreboard objectives add lqe.veinminer.copper minecraft.mined:minecraft.copper_ore
scoreboard objectives add lqe.veinminer.iron minecraft.mined:minecraft.iron_ore
scoreboard objectives add lqe.veinminer.gold minecraft.mined:minecraft.gold_ore
scoreboard objectives add lqe.veinminer.redstone minecraft.mined:minecraft.redstone_ore
scoreboard objectives add lqe.veinminer.lapis minecraft.mined:minecraft.lapis_ore
scoreboard objectives add lqe.veinminer.diamond minecraft.mined:minecraft.diamond_ore
scoreboard objectives add lqe.veinminer.emerald minecraft.mined:minecraft.emerald_ore
scoreboard objectives add lqe.veinminer.deep_coal minecraft.mined:minecraft.deepslate_coal_ore
scoreboard objectives add lqe.veinminer.deep_copper minecraft.mined:minecraft.deepslate_copper_ore
scoreboard objectives add lqe.veinminer.deep_iron minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add lqe.veinminer.deep_gold minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add lqe.veinminer.deep_redstone minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives add lqe.veinminer.deep_lapis minecraft.mined:minecraft.deepslate_lapis_ore
scoreboard objectives add lqe.veinminer.deep_diamond minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard objectives add lqe.veinminer.deep_emerald minecraft.mined:minecraft.deepslate_emerald_ore
scoreboard objectives add lqe.veinminer.quartz minecraft.mined:minecraft.nether_quartz_ore
scoreboard objectives add lqe.veinminer.nether_gold minecraft.mined:minecraft.nether_gold_ore
scoreboard objectives add lqe.veinminer.debris minecraft.mined:minecraft.ancient_debris
scoreboard objectives add lqe.veinminer.wait dummy
scoreboard objectives add lqe.veinminer.blocks dummy
scoreboard objectives add lqe.veinminer.unbreaking_roll dummy

say LQE Enchantment Pack reloaded!