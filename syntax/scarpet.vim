if exists("b:current_syntax")
    finish
endif

syntax keyword Keyword1 not fact rand
syntax keyword Keyword1 sin cos tan asin acos atan atan2 sinh cosh tanh sec csc sech csch cot acot coth asinh acosh atanh
syntax keyword Keyword1 rad deg
syntax keyword Keyword1 log log10 log1p
syntax keyword Keyword1 sqrt
syntax keyword Keyword1 max min abs round floor ceil
syntax keyword Keyword1 mandelbrot relu
syntax keyword Keyword1 perlin simplex
syntax keyword Keyword1 print return exit throw try
syntax keyword Keyword1 task task_thread task_count task_value task_join task_completed synchronize task_dock
syntax keyword Keyword1 system_variable_get system_variable_set
syntax keyword Keyword1 l join split slice sort sort_key range m keys values pairs copy
syntax keyword Keyword1 get put has delete
syntax keyword Keyword1 var undef vars if loop map filter first all c_for for while reduce continue break
syntax keyword Keyword1 import call outer type hash_code bool number str length rand sleep time profile_expr lower upper title replace replace_first

syntax keyword Keyword2 block pos pos_offset solid air liquid flammable
syntax keyword Keyword2 transparent opacity blocks_daylight emitted_light light block_light sky_light see_sky brightness
syntax keyword Keyword2 hardness blast_resistance top loaded suffocates power ticks_randomly update block_tick random_tick in_slime_chunk
syntax keyword Keyword2 set without_updates
syntax keyword Keyword2 blocks_movement block_sound material map_colour block_state block_list block_tags block_data poi set_poi
syntax keyword Keyword2 place_item set_biome biome loaded_status generation_status inhabited_time spawn_potential chunk_tickets
syntax keyword Keyword2 structure_eligibility structures structure_references set_structure reset_chunk reload_chunk custom_dimension
syntax keyword Keyword2 add_chunk_ticket
syntax keyword Keyword2 convert_date unix_time
syntax keyword Keyword2 display_title
syntax keyword Keyword2 scoreboard scoreboard_add scoreboard_remove scoreboard_display
syntax keyword Keyword2 team_add team_list team_remove team_leave team_property
syntax keyword Keyword2 bossbar
syntax keyword Keyword2 player spawn entity_id entity_list entity_area entity_selector query modify entity_event entity_load_handler entity_types
syntax keyword Keyword2 item_list item_tags stack_limit item_category recipe_data crafting_remaining_item
syntax keyword Keyword2 inventory_size inventory_has_items inventory_get inventory_set inventory_find inventory_remove drop_item
syntax keyword Keyword2 scan volume neighbours rect diamond
syntax keyword Keyword2 format logger sound particle particle_line particle_rect system_info
syntax keyword Keyword2 handle_event signal_event
syntax keyword Keyword2 run save tick_time world_time day_time last_tick_times game_tick current_dimension in_dimension view_distance
syntax keyword Keyword2 plop harvest destroy schedule nbt draw_shape create_marker remove_all_markers
syntax keyword Keyword2 load_app_data store_app_data read_file write_file delete_file list_files
syntax keyword Keyword2 escape_nbt parse_nbt encode_nbt tag_matches statistic
syntax keyword Keyword2 nbt_storage

syntax keyword Keyword7 __command
syntax keyword Keyword7 __config
syntax keyword Keyword7 __on_chunk_generated
syntax keyword Keyword7 __on_close
syntax keyword Keyword7 __on_player_attacks_entity
syntax keyword Keyword7 __on_player_breaks_block
syntax keyword Keyword7 __on_player_clicks_block
syntax keyword Keyword7 __on_player_changes_dimension
syntax keyword Keyword7 __on_player_chooses_recipe
syntax keyword Keyword7 __on_player_collides_with_entity
syntax keyword Keyword7 __on_player_deploys_elytra
syntax keyword Keyword7 __on_player_drops_item
syntax keyword Keyword7 __on_player_drops_stack
syntax keyword Keyword7 __on_player_finishes_using_item
syntax keyword Keyword7 __on_player_interacts_with_block
syntax keyword Keyword7 __on_player_interacts_with_entity
syntax keyword Keyword7 __on_player_jumps
syntax keyword Keyword7 __on_player_picks_up_item
syntax keyword Keyword7 __on_player_places_block
syntax keyword Keyword7 __on_player_releases_item
syntax keyword Keyword7 __on_player_rides
syntax keyword Keyword7 __on_player_right_clicks_block
syntax keyword Keyword7 __on_player_starts_sneaking
syntax keyword Keyword7 __on_player_starts_sprinting
syntax keyword Keyword7 __on_player_stops_sneaking
syntax keyword Keyword7 __on_player_stops_sprinting
syntax keyword Keyword7 __on_player_swings_hand
syntax keyword Keyword7 __on_player_switches_slot
syntax keyword Keyword7 __on_player_swaps_hands
syntax keyword Keyword7 __on_player_takes_damage
syntax keyword Keyword7 __on_player_trades
syntax keyword Keyword7 __on_player_uses_item
syntax keyword Keyword7 __on_player_wakes_up
syntax keyword Keyword7 __on_player_escapes_sleep
syntax keyword Keyword7 __on_statistic
syntax keyword Keyword7 __on_tick
syntax keyword Keyword7 __on_tick_ender
syntax keyword Keyword7 __on_tick_nether
syntax keyword Keyword7 __on_player_takes_damage
syntax keyword Keyword7 __on_player_deals_damage
syntax keyword Keyword7 __on_player_dies
syntax keyword Keyword7 __on_player_respawns
syntax keyword Keyword7 __on_player_disconnects
syntax keyword Keyword7 __on_player_connects

syntax keyword scarpetConstant euler pi
syntax keyword scarpetBoolean true false null
syntax keyword scarpetLabel x y z p _ _i _a _x _y _z
syntax match scarpetLabel "\v<global_[0-9a-zA-Z_]+"

syntax match scarpetNumber "\v<\d+(\.\d+)?(e-?\d+)?"
syntax match scarpetNumber "\v<0x[0-9a-fA-F]+>"

syntax match scarpetOperator "\v/"
syntax match scarpetOperator "\v\,"
syntax match scarpetOperator "\v\*"
syntax match scarpetOperator "\v\+"
syntax match scarpetOperator "\v-"
syntax match scarpetOperator "\v\+\="
syntax match scarpetOperator "\v-\>"
syntax match scarpetOperator "\v\~"
syntax match scarpetOperator "\v;"
syntax match scarpetOperator "\v:"
syntax match scarpetOperator "\v\^"
syntax match scarpetOperator "\v\%"
syntax match scarpetOperator "\v\="
syntax match scarpetOperator "\v\|\|"
syntax match scarpetOperator "\v\&\&"
syntax match scarpetOperator "\v\<"
syntax match scarpetOperator "\v\>"
syntax match scarpetOperator "\v\<\="
syntax match scarpetOperator "\v\>\="
syntax match scarpetOperator "\v\<\>"
syntax match scarpetOperator "\v!\="
syntax match scarpetOperator "\v\.\.\."

syntax match scarpetComment "\v//.*$"

syntax region scarpetString start=/\v'/ skip=/\v\\./ end=/\v'/
syntax region scarpetString start=/\v"/ skip=/\v\\./ end=/\v"/

"syntax region scarpetList transparent start="\v\[" skip=/\v".*[\[\]].*"/ end="\v\]" fold
syntax region scarpetExpression transparent start="\v\(" end="\v\)" fold
syntax region scarpetList transparent start="\v\[" end="\v\]" fold
syntax region scarpetMap transparent start="\v\{" end="\v\}" fold

let b:current_syntax = "scarpet"

highlight link Keyword1 Keyword
highlight link Keyword2 Function
highlight link Keyword7 Function
highlight link scarpetFunction Function
highlight link scarpetLabel Label
highlight link scarpetComment Comment
highlight link scarpetOperator Operator
highlight link scarpetConstant Constant
highlight link scarpetString String
highlight link scarpetNumber Number
highlight link scarpetNull Constant
highlight link scarpetBoolean Boolean

