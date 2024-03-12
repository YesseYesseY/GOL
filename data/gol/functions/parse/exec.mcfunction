scoreboard objectives add ParseLoop1 dummy
scoreboard objectives add ParseLoop2 dummy

scoreboard players operation Data ParseLoop1 = Data BoardSize
scoreboard players operation Data ParseLoop2 = Data BoardSize

execute store result storage parse_board_data loop1 int 1 run scoreboard players get Data ParseLoop1
execute store result storage parse_board_data loop2 int 1 run scoreboard players get Data ParseLoop2
$execute positioned $(x) $(y) $(z) run function gol:parse/loop with storage parse_board_data