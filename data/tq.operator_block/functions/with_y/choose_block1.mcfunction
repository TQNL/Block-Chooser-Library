scoreboard players reset #tq.obc.wh tq.operator_block

# limit about of times this function can run for: at 254 iterations, y is above maxiumum y can be
execute if score #tq.obc.choose_block_counter tq.operator_block matches 254.. run return run function tq.operator_block:force

# need a block to perform operations on, this is to choose a block smartly
execute store result storage operator_block:choose_block coords.x int 1 run random value -16..15
## y is choosen already
execute store result storage operator_block:choose_block coords.z int 1 run random value -16..15

function tq.operator_block:with_y/choose_block2 with storage operator_block:choose_block coords
