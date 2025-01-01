# limit about of times this function can run for
execute if score #tq.obc.choose_block_counter tq.operator_block matches 127..254 run return run function tq.operator_block:world_height

# need a block to perform operations on, this is to choose a block smartly
execute store result storage operator_block:choose_block coords.x int 1 run random value -16..15
data modify storage operator_block:choose_block coords.y set value -64
execute store result storage operator_block:choose_block coords.z int 1 run random value -16..15

function tq.operator_block:no_y/choose_block2 with storage operator_block:choose_block coords
