execute store result storage parse_pos x int 1 run scoreboard players get Data BoardPosX
execute store result storage parse_pos y int 1 run scoreboard players get Data BoardPosY
execute store result storage parse_pos z int 1 run scoreboard players get Data BoardPosZ
execute run function gol:parse/exec with storage parse_pos