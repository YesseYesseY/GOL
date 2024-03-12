# tellraw @a [{"score":{"name":"Data","objective":"StepLoop1"}},{"text":" "},{"score":{"name":"Data","objective":"StepLoop2"}}]

$execute run function gol:neighbors/exec {x:$(loop1),y:$(loop2)}

scoreboard objectives add CellState dummy
scoreboard players set Data CellState 0

$execute if block ~$(loop1) ~$(loop2) ~ minecraft:black_wool run scoreboard players set Data CellState 1

$execute if score Data CellState matches 1 if score Data Neighbors matches 0..1 run scoreboard players set Data Board_$(loop1)_$(loop2) 0
$execute if score Data CellState matches 1 if score Data Neighbors matches 4.. run scoreboard players set Data Board_$(loop1)_$(loop2) 0
$execute if score Data CellState matches 0 if score Data Neighbors matches 3 run scoreboard players set Data Board_$(loop1)_$(loop2) 1

# -------------------------------------------------------------------------------------------------------------------------

scoreboard players remove Data StepLoop1 1
execute if score Data StepLoop1 matches 0 if score Data StepLoop2 matches 1.. run scoreboard players remove Data StepLoop2 1
execute if score Data StepLoop1 matches 0 if score Data StepLoop2 matches 1.. run scoreboard players operation Data StepLoop1 = Data BoardSize

execute store result storage step_data loop1 int 1 run scoreboard players get Data StepLoop1
execute store result storage step_data loop2 int 1 run scoreboard players get Data StepLoop2
execute if score Data StepLoop1 matches 1.. if score Data StepLoop2 matches 1.. run function gol:step/loop with storage step_data
