# Summon an armor stand at player's death location
# The armor stand wears a chestplate with a special helper version of Volatile, which makes the armor stand explode on the spot
$summon armor_stand $(x) $(y) $(z) {ShowArms:1b,Invisible:1b,Marker:1b,NoGravity:1b,equipment:{chest:{id:leather_chestplate,components:{enchantments:{"lqe:volatile_helper":3}}}}}