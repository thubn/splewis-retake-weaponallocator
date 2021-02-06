# splewis-retake-weaponallocator
Addon for [splewis retakes](https://github.com/splewis/csgo-retakes) sourcemod plugin.
This Plugin allocates the weapons for the players. There are Pistol rounds, forces and normal gun round.

## Chat commands:
- `!guns` lets the player choose all the guns for the different round types
- `!eco` opens the eco weapon menu
- `!pistol` opens the pistol menu
- `!awp` toggles awp
- `!taser` toggles taser

## Server Convars:
- cvar - default value - description
- "sm_retakes_weapon_pistolrounds", "5", "The number of gun rounds (0 = no gun round)"
- "sm_retakes_weapon_mimic_competitive_pistol_rounds", "1", "Whether pistol rounds are like 800$ rounds"
- "sm_retakes_weapon_primary_enabled", "1", "Whether the players can have primary weapon"
- "sm_retakes_weapon_nades_enabled", "1", "Whether the players can have nades"
- "sm_retakes_weapon_allow_nades_on_pistol_rounds", "1", "Whether the players can have nades on pistol rounds"
- "sm_retakes_weapon_nades_hegrenade_ct_max", "1", "Number of hegrenade CT team can have"
- "sm_retakes_weapon_nades_hegrenade_t_max", "1", "Number of hegrenade T team can have"
- "sm_retakes_weapon_nades_flashbang_ct_max", "1", "Number of flashbang CT team can have"
- "sm_retakes_weapon_nades_flashbang_t_max", "1", "Number of flashbang T team can have"
- "sm_retakes_weapon_nades_smokegrenade_ct_max", "1", "Number of smokegrenade CT team can have"
- "sm_retakes_weapon_nades_smokegrenade_t_max", "1", "Number of smokegrenade T team can have"
- "sm_retakes_weapon_nades_molotov_ct_max", "1", "Number of molotov CT team can have"
- "sm_retakes_weapon_nades_molotov_t_max", "1", "Number of molotov T team can have"
- "sm_retakes_weapon_helmet_enabled", "1", "Whether the players have helmet"
- "sm_retakes_weapon_kevlar_enabled", "1", "Whether the players have kevlar"
- "sm_retakes_weapon_awp_team_max", "1", "The max number of AWP per team (0 = no awp)"

- "sm_retakes_weapon_deagle_enabled", "1", "Whether the players can choose deagle"
- "sm_retakes_weapon_r8_enabled", "1", "Whether the players can choose revolver"
- "sm_retakes_weapon_cz_enabled", "1", "Whether the playres can choose CZ"
- "sm_retakes_weapon_p250_enabled", "1", "Whether the players can choose P250"
- "sm_retakes_weapon_tec9_fiveseven_enabled", "1", "Whether the players can choose Tec9/Five seven"

- "sm_retakes_kevlar_probability_on_competitive_pistol_rounds", "6", "The probability to get kevlar for each player on competitive pistol rounds. Between 0 to 10. 0 = never, 10 = always"
- "sm_retakes_defusekit_probability_on_competitive_pistol_rounds", "6", "The probability to get defusal kit for each player on competitive pistol rounds. Between 0 to 10. 0 = never, 10 = always"

- "sm_retakes_kev_kit_nad_priority_on_comp_pistol_rounds_kev", "1", "The relative priority to have kevlar against kit/nade. Between 1 to 3. Default 1 (first)."
- "sm_retakes_kev_kit_nad_priority_on_comp_pistol_rounds_kit", "2", "The relative priority to have kit against kevlar/nade. Between 1 to 3. Default 2 (second)."
- "sm_retakes_kev_kit_nad_priority_on_comp_pistol_rounds_nad", "3", "The relative priority to have nade against kevlar/kit. Between 1 to 3. Default 3 (third)."

- "sm_retakes_enable_eco", "1", "Enable or disable eco/force rounds."
- "sm_retakes_ct_chance_eco1", "15", "Chance in percent, that CTs have to do an SMG Force."
- "sm_retakes_t_chance_eco1", "12", "Chance in percent, that Ts have to do an SMG Force."
- "sm_retakes_ct_chance_eco2", "7", "Chance in percent, that CTs have to do an Pistol Force."
- "sm_retakes_t_chance_eco2", "5", "Chance in percent, that Ts have to do an Pistol Force."
- "sm_retakes_streak_to_t_eco1", "3", "Rounds the T team has to win in a row to get the SMG Force."
- "sm_retakes_streak_to_t_eco2", "4", "Rounds the T team has to win in a row to get the Pistol Force."