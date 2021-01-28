if exists("b:current_syntax")
    finish
endif

" As taken from https://github.com/gnembon/fabric-carpet/tree/master/docs/scarpet/resources/editors/npp

" Keyword 1
syntax keyword scarpetBuiltinFunction not fact rand
syntax keyword scarpetBuiltinFunction sin cos tan asin acos atan atan2 sinh cosh tanh sec csc sech csch cot acot coth asinh acosh atanh
syntax keyword scarpetBuiltinFunction rad deg
syntax keyword scarpetBuiltinFunction log log10 log1p
syntax keyword scarpetBuiltinFunction sqrt
syntax keyword scarpetBuiltinFunction max min abs round floor ceil
syntax keyword scarpetBuiltinFunction mandelbrot relu
syntax keyword scarpetBuiltinFunction perlin simplex
syntax keyword scarpetBuiltinFunction print return exit throw try
syntax keyword scarpetBuiltinFunction task task_thread task_count task_value task_join task_completed synchronize task_dock
syntax keyword scarpetBuiltinFunction system_variable_get system_variable_set
syntax keyword scarpetBuiltinFunction l join split slice sort sort_key range m keys values pairs copy
syntax keyword scarpetBuiltinFunction get put has delete
syntax keyword scarpetBuiltinFunction var undef vars if loop map filter first all c_for for while reduce continue break
syntax keyword scarpetBuiltinFunction import call outer type hash_code bool number str length rand sleep time profile_expr lower upper title replace replace_first

" Keyword 2
syntax keyword scarpetBuiltinFunction block pos pos_offset solid air liquid flammable
syntax keyword scarpetBuiltinFunction transparent opacity blocks_daylight emitted_light light block_light sky_light see_sky brightness
syntax keyword scarpetBuiltinFunction hardness blast_resistance top loaded suffocates power ticks_randomly update block_tick random_tick in_slime_chunk
syntax keyword scarpetBuiltinFunction set without_updates
syntax keyword scarpetBuiltinFunction blocks_movement block_sound material map_colour block_state block_list block_tags block_data poi set_poi
syntax keyword scarpetBuiltinFunction place_item set_biome biome loaded_status generation_status inhabited_time spawn_potential chunk_tickets
syntax keyword scarpetBuiltinFunction structure_eligibility structures structure_references set_structure reset_chunk reload_chunk custom_dimension
syntax keyword scarpetBuiltinFunction add_chunk_ticket
syntax keyword scarpetBuiltinFunction convert_date unix_time
syntax keyword scarpetBuiltinFunction display_title
syntax keyword scarpetBuiltinFunction scoreboard scoreboard_add scoreboard_remove scoreboard_display
syntax keyword scarpetBuiltinFunction team_add team_list team_remove team_leave team_property
syntax keyword scarpetBuiltinFunction bossbar
syntax keyword scarpetBuiltinFunction player spawn entity_id entity_list entity_area entity_selector query modify entity_event entity_load_handler entity_types
syntax keyword scarpetBuiltinFunction item_list item_tags stack_limit item_category recipe_data crafting_remaining_item
syntax keyword scarpetBuiltinFunction inventory_size inventory_has_items inventory_get inventory_set inventory_find inventory_remove drop_item
syntax keyword scarpetBuiltinFunction scan volume neighbours rect diamond
syntax keyword scarpetBuiltinFunction format logger sound particle particle_line particle_rect system_info
syntax keyword scarpetBuiltinFunction handle_event signal_event
syntax keyword scarpetBuiltinFunction run save tick_time world_time day_time last_tick_times game_tick current_dimension in_dimension view_distance
syntax keyword scarpetBuiltinFunction plop harvest destroy schedule nbt draw_shape create_marker remove_all_markers
syntax keyword scarpetBuiltinFunction load_app_data store_app_data read_file write_file delete_file list_files
syntax keyword scarpetBuiltinFunction escape_nbt parse_nbt encode_nbt tag_matches statistic
syntax keyword scarpetBuiltinFunction nbt_storage

" Keyword 7
syntax keyword scarpetBuiltinFunction __command
syntax keyword scarpetBuiltinFunction __config
syntax keyword scarpetBuiltinFunction __on_chunk_generated
syntax keyword scarpetBuiltinFunction __on_close
syntax keyword scarpetBuiltinFunction __on_player_attacks_entity
syntax keyword scarpetBuiltinFunction __on_player_breaks_block
syntax keyword scarpetBuiltinFunction __on_player_clicks_block
syntax keyword scarpetBuiltinFunction __on_player_changes_dimension
syntax keyword scarpetBuiltinFunction __on_player_chooses_recipe
syntax keyword scarpetBuiltinFunction __on_player_collides_with_entity
syntax keyword scarpetBuiltinFunction __on_player_deploys_elytra
syntax keyword scarpetBuiltinFunction __on_player_drops_item
syntax keyword scarpetBuiltinFunction __on_player_drops_stack
syntax keyword scarpetBuiltinFunction __on_player_finishes_using_item
syntax keyword scarpetBuiltinFunction __on_player_interacts_with_block
syntax keyword scarpetBuiltinFunction __on_player_interacts_with_entity
syntax keyword scarpetBuiltinFunction __on_player_jumps
syntax keyword scarpetBuiltinFunction __on_player_picks_up_item
syntax keyword scarpetBuiltinFunction __on_player_places_block
syntax keyword scarpetBuiltinFunction __on_player_releases_item
syntax keyword scarpetBuiltinFunction __on_player_rides
syntax keyword scarpetBuiltinFunction __on_player_right_clicks_block
syntax keyword scarpetBuiltinFunction __on_player_starts_sneaking
syntax keyword scarpetBuiltinFunction __on_player_starts_sprinting
syntax keyword scarpetBuiltinFunction __on_player_stops_sneaking
syntax keyword scarpetBuiltinFunction __on_player_stops_sprinting
syntax keyword scarpetBuiltinFunction __on_player_swings_hand
syntax keyword scarpetBuiltinFunction __on_player_switches_slot
syntax keyword scarpetBuiltinFunction __on_player_swaps_hands
syntax keyword scarpetBuiltinFunction __on_player_takes_damage
syntax keyword scarpetBuiltinFunction __on_player_trades
syntax keyword scarpetBuiltinFunction __on_player_uses_item
syntax keyword scarpetBuiltinFunction __on_player_wakes_up
syntax keyword scarpetBuiltinFunction __on_player_escapes_sleep
syntax keyword scarpetBuiltinFunction __on_statistic
syntax keyword scarpetBuiltinFunction __on_tick
syntax keyword scarpetBuiltinFunction __on_tick_ender
syntax keyword scarpetBuiltinFunction __on_tick_nether
syntax keyword scarpetBuiltinFunction __on_player_takes_damage
syntax keyword scarpetBuiltinFunction __on_player_deals_damage
syntax keyword scarpetBuiltinFunction __on_player_dies
syntax keyword scarpetBuiltinFunction __on_player_respawns
syntax keyword scarpetBuiltinFunction __on_player_disconnects
syntax keyword scarpetBuiltinFunction __on_player_connects

" Keyword 3
syntax keyword scarpetConstant euler pi
syntax keyword scarpetBoolean true false null

" Keyword 4 & 5
syntax keyword scarpetBuiltin x y z p _ _i _a _x _y _z

" Keyword 6
syntax match scarpetGlobal "\v<global_[0-9a-zA-Z_]+"

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

syntax match scarpetFunctionCall "\v\zs[_a-zA-Z][_a-zA-Z0-9]*\ze\(" contains=@scarpetGlobal

syntax region scarpetString start=/\v'/ skip=/\v\\./ end=/\v'/
syntax region scarpetString start=/\v"/ skip=/\v\\./ end=/\v"/

"syntax region scarpetList transparent start="\v\[" skip=/\v".*[\[\]].*"/ end="\v\]" fold
syntax region scarpetExpression transparent start="\v\(" end="\v\)" fold
syntax region scarpetList transparent start="\v\[" end="\v\]" fold
syntax region scarpetMap transparent start="\v\{" end="\v\}" fold

let b:current_syntax = "scarpet"

highlight link scarpetBuiltinFunction Type
highlight link scarpetGlobal Keyword
highlight link scarpetBuiltin Keyword
highlight link scarpetComment Comment
highlight link scarpetFunctionCall Function
highlight link scarpetOperator Operator
highlight link scarpetConstant Constant
highlight link scarpetString String
highlight link scarpetNumber Number
highlight link scarpetNull Constant
highlight link scarpetBoolean Boolean

