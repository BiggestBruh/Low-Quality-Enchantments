# Summon an arrow at player's location, checking whether it's a tipped arrow and spawning a tipped arrow accordingly
# Non tipped arrow
execute if predicate lqe:tipped/not run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:arrow",count:1b}}
# Arrows shot by mobs
execute if predicate lqe:tipped/mobs/bogged run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:poison"}}}}
execute if predicate lqe:tipped/mobs/stray run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:slowness"}}}}
# Regular tipped arrows
execute if predicate lqe:tipped/normal/fire_resistance run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:fire_resistance"}}}}
execute if predicate lqe:tipped/normal/harming run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:harming"}}}}
execute if predicate lqe:tipped/normal/healing run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:healing"}}}}
execute if predicate lqe:tipped/normal/infested run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:infested"}}}}
execute if predicate lqe:tipped/normal/invisibility run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:invisibility"}}}}
execute if predicate lqe:tipped/normal/leaping run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:leaping"}}}}
execute if predicate lqe:tipped/normal/luck run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:luck"}}}}
execute if predicate lqe:tipped/normal/night_vision run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:night_vision"}}}}
execute if predicate lqe:tipped/normal/oozing run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:oozing"}}}}
execute if predicate lqe:tipped/normal/poison run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:poison"}}}}
execute if predicate lqe:tipped/normal/regeneration run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:regeneration"}}}}
execute if predicate lqe:tipped/normal/slow_falling run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:slow_falling"}}}}
execute if predicate lqe:tipped/normal/slowness run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:slowness"}}}}
execute if predicate lqe:tipped/normal/strength run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:strength"}}}}
execute if predicate lqe:tipped/normal/swiftness run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:swiftness"}}}}
execute if predicate lqe:tipped/normal/turtle_master run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:turtle_master"}}}}
execute if predicate lqe:tipped/normal/water_breathing run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:water_breathing"}}}}
execute if predicate lqe:tipped/normal/weakness run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:weakness"}}}}
execute if predicate lqe:tipped/normal/weaving run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:weaving"}}}}
execute if predicate lqe:tipped/normal/wind_charged run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:wind_charged"}}}}
# Lengthened tipped arrows
execute if predicate lqe:tipped/long/fire_resistance run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:long_fire_resistance"}}}}
execute if predicate lqe:tipped/long/invisibility run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:long_invisibility"}}}}
execute if predicate lqe:tipped/long/leaping run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:long_leaping"}}}}
execute if predicate lqe:tipped/long/night_vision run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:long_night_vision"}}}}
execute if predicate lqe:tipped/long/poison run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:long_poison"}}}}
execute if predicate lqe:tipped/long/regeneration run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:long_regeneration"}}}}
execute if predicate lqe:tipped/long/slow_falling run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:long_slow_falling"}}}}
execute if predicate lqe:tipped/long/slowness run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:long_slowness"}}}}
execute if predicate lqe:tipped/long/strength run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:long_strength"}}}}
execute if predicate lqe:tipped/long/swiftness run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:long_swiftness"}}}}
execute if predicate lqe:tipped/long/turtle_master run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:long_turtle_master"}}}}
execute if predicate lqe:tipped/long/water_breathing run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:long_water_breathing"}}}}
execute if predicate lqe:tipped/long/weakness run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:long_weakness"}}}}
# Stronger tipped arrows
execute if predicate lqe:tipped/strong/harming run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:strong_harming"}}}}
execute if predicate lqe:tipped/strong/healing run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:strong_healing"}}}}
execute if predicate lqe:tipped/strong/leaping run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:strong_leaping"}}}}
execute if predicate lqe:tipped/strong/poison run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:strong_poison"}}}}
execute if predicate lqe:tipped/strong/regeneration run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:strong_regeneration"}}}}
execute if predicate lqe:tipped/strong/slowness run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:strong_slowness"}}}}
execute if predicate lqe:tipped/strong/strength run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:strong_strength"}}}}
execute if predicate lqe:tipped/strong/swiftness run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:strong_swiftness"}}}}
execute if predicate lqe:tipped/strong/turtle_master run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:tipped_arrow",count:1b,components:{"minecraft:potion_contents":{potion:"minecraft:strong_turtle_master"}}}}