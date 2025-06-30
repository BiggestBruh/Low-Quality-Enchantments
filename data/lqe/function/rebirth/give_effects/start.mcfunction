# Give player effects using stored duration and level
$function lqe:rebirth/give_effects/give with storage lqe:rebirth players[{ID:$(UUID)}]

# Reset player's stored duration until they re-equip something enchanted with Rebirth
scoreboard players set @s lqe.rebirth.duration 0
function lqe:rebirth/calculate_effects/store with entity @s