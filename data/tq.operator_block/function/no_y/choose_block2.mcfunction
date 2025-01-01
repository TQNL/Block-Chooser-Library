# check if these random coords are desirable
$execute positioned $(x) $(y) $(z) if blocks ~ ~ ~ ~ ~ ~ ~1 ~ ~ all run return 1

# not, so increment counter and redo
scoreboard players add #tq.obc.choose_block_counter tq.operator_block 1
function tq.operator_block:no_y/choose_block1
