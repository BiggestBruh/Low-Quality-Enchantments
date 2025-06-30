# Mark wandering trader as edited
tag @s add lqe.runic_trade

# 10% chance to get an extra trade
execute store result score @s lqe.runic_roll run random value 0..9
execute if score @s lqe.runic_roll matches 1.. run return fail

# Add the runic catalyst trade
data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:32},buyB:{id:"minecraft:command_block",count:12,components:{item_name:[{"text":"Runic Catalyst","color":"aqua"}],lore:[[{"text":"A small, magical orb valued by","color":"dark_purple","italic":true}],[{"text":"traders and arcanists. They have","color":"dark_purple","italic":true}],[{"text":"several applications in both","color":"dark_purple","italic":true}],[{"text":"magical creations and technology.","color":"dark_purple","italic":true}]],item_model:"lqe:runic_catalyst"}},maxUses:4,rewardExp:1b,sell:{id:"minecraft:shulker_box",count:1,components:{item_name:"Runic Vessel",lore:[[{"text":"An arcane crate dotted with","color":"dark_purple"}],[{"text":"magical runes. It can be used as","color":"dark_purple"}],[{"text":"a portable storage device.","color":"dark_purple"}]]}}}