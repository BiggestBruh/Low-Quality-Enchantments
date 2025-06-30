# Reset the death count and advancement
scoreboard players set @s lqe.deaths 0
advancement revoke @s only lqe:technical/volatile_death
execute if score @s lqe.volatile.level matches 0 run return fail

# Volatile
# Store player's last death location
function lqe:volatile/death_location with entity @s
# Summon explosion on player's death location
function lqe:volatile/summon with entity @s