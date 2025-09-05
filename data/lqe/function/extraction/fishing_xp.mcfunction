# Revoke the helper advancement
advancement revoke @s only lqe:technical/fished

# If no Extraction, stop
execute if predicate lqe:extraction/0 run return fail

# If Extraction found, spawn XP at player's location, amount depends on enchantment level
# Amount of XP received for fishing:
#   No enchant:     1 - 6
#   Extraction I:   2 - 8
#   Extraction II:  2 - 9
#   Extraction III: 2 - 11
#   Extraction IV:  2 - 12
#   Extraction V:   3 - 14
# Normally, Extraction multiplies XP gained; for fishing this would mean doing maths
# that I can't be bothered to do, if I wanted to take into account the 1-6 XP that fishing
# awards already. As a result, bonus XP will be awarded to the player on top of the XP gained normally,
# which technically makes this enchantment more powerful than intended when fishing.
# This is fine because fishing kinda sucks, so extra incentive to do it is welcome.

execute if predicate lqe:extraction/fishing_rod if predicate lqe:extraction/1 store result storage lqe extraction.xp_amount int 1.0 run random value 2..8
execute if predicate lqe:extraction/fishing_rod if predicate lqe:extraction/2 store result storage lqe extraction.xp_amount int 1.0 run random value 2..9
execute if predicate lqe:extraction/fishing_rod if predicate lqe:extraction/3 store result storage lqe extraction.xp_amount int 1.0 run random value 2..11
execute if predicate lqe:extraction/fishing_rod if predicate lqe:extraction/4 store result storage lqe extraction.xp_amount int 1.0 run random value 2..12
execute if predicate lqe:extraction/fishing_rod if predicate lqe:extraction/5 store result storage lqe extraction.xp_amount int 1.0 run random value 3..14

function lqe:extraction/summon_xp with storage lqe extraction