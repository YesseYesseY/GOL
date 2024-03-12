scoreboard objectives add StepLoop1 dummy
scoreboard objectives add StepLoop2 dummy

scoreboard players operation Data StepLoop1 = Data BoardSize
scoreboard players operation Data StepLoop2 = Data BoardSize

execute store result storage step_data loop1 int 1 run scoreboard players get Data StepLoop1
execute store result storage step_data loop2 int 1 run scoreboard players get Data StepLoop2
$execute positioned $(x) $(y) $(z) run function gol:step/loop with storage step_data