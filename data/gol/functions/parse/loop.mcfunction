# tellraw @a [{"score":{"name":"Data","objective":"ParseLoop1"}},{"text":" "},{"score":{"name":"Data","objective":"ParseLoop2"}}]

$execute if block ~$(loop1) ~$(loop2) ~ minecraft:white_wool run scoreboard players set Data Board_$(loop1)_$(loop2) 0
$execute if block ~$(loop1) ~$(loop2) ~ minecraft:white_wool run scoreboard players set Data WorkBoard_$(loop1)_$(loop2) 0
$execute unless block ~$(loop1) ~$(loop2) ~ minecraft:white_wool run scoreboard players set Data Board_$(loop1)_$(loop2) 1
$execute unless block ~$(loop1) ~$(loop2) ~ minecraft:white_wool run scoreboard players set Data WorkBoard_$(loop1)_$(loop2) 1

scoreboard players remove Data ParseLoop1 1
execute if score Data ParseLoop1 matches 0 if score Data ParseLoop2 matches 1.. run scoreboard players remove Data ParseLoop2 1
execute if score Data ParseLoop1 matches 0 if score Data ParseLoop2 matches 1.. run scoreboard players operation Data ParseLoop1 = Data BoardSize

execute store result storage parse_board_data loop1 int 1 run scoreboard players get Data ParseLoop1
execute store result storage parse_board_data loop2 int 1 run scoreboard players get Data ParseLoop2
execute if score Data ParseLoop1 matches 1.. if score Data ParseLoop2 matches 1.. run function gol:parse/loop with storage parse_board_data
