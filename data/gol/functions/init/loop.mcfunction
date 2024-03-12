# tellraw @a [{"score":{"name":"Data","objective":"InitLoop1"}},{"text":" "},{"score":{"name":"Data","objective":"InitLoop2"}}]

execute store result storage init_create_data num1 int 1 run scoreboard players get Data InitLoop1
execute store result storage init_create_data num2 int 1 run scoreboard players get Data InitLoop2
execute run function gol:init/add with storage init_create_data

scoreboard players remove Data InitLoop1 1
execute if score Data InitLoop1 matches 0 if score Data InitLoop2 matches 1.. run scoreboard players remove Data InitLoop2 1
execute if score Data InitLoop1 matches 0 if score Data InitLoop2 matches 1.. run scoreboard players operation Data InitLoop1 = Data BoardSize
execute if score Data InitLoop1 matches 1.. if score Data InitLoop2 matches 1.. run function gol:init/loop