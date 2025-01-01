# in case these spawn chunks aren't loaded, load them and save their previous loaded state
execute positioned 0 ~ 0 store success score #tq.obc.chunks.0 tq.operator_block if loaded ~ ~ ~ run forceload add ~ ~
execute positioned -1 ~ 0 store success score #tq.obc.chunks.1 tq.operator_block if loaded ~ ~ ~ run forceload add ~ ~
execute positioned 0 ~ -1 store success score #tq.obc.chunks.2 tq.operator_block if loaded ~ ~ ~ run forceload add ~ ~
execute positioned -1 ~ -1 store success score #tq.obc.chunks.3 tq.operator_block if loaded ~ ~ ~ run forceload add ~ ~

# run initial function of this library
function tq.operator_block:initial

# unforceload chunks if needed
execute positioned 0 ~ 0 if score #tq.obc.chunks.0 tq.operator_block matches 1 run forceload remove ~ ~
execute positioned -1 ~ 0 if score #tq.obc.chunks.1 tq.operator_block matches 1 run forceload remove ~ ~
execute positioned 0 ~ -1 if score #tq.obc.chunks.2 tq.operator_block matches 1 run forceload remove ~ ~
execute positioned -1 ~ -1 if score #tq.obc.chunks.3 tq.operator_block matches 1 run forceload remove ~ ~

# clean scores
scoreboard players reset * tq.operator_block
