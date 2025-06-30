# Store data for the item in mainhand in a data storage
function lqe:clumsy/mainhand/store with entity @s

# Delete the mainhand item from the mainhand slot
item replace entity @s weapon.mainhand with minecraft:air

# Summon the stored item at player's location
function lqe:clumsy/mainhand/drop with entity @s
