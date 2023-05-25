params ["_grpType"];

_configGroup = ["_Soldier_SL_F", "_Soldier_F", "_Soldier_M_F", "_Soldier_AR_F", "_Soldier_lite_F", "_Soldier_TL_F", "_Soldier_F", "_Soldier_AT_F", "_Soldier_F", "_medic_F", "_engineer_F", "soldier_repair_F", "recon_LAT_F", "_recon_F", "_Soldier_AT_F", "_Soldier_GL_F", "_Soldier_GL_F", "_medic_F", "_Soldier_F", "_Soldier_F", "_Soldier_F", "_Soldier_F", "_Soldier_F", "_Soldier_F", "_Soldier_F", "_Soldier_F", "_Soldier_F", "_Soldier_F", "_Soldier_F", "_Soldier_F", "_Soldier_M_F", "_Soldier_AR_F", "_Soldier_A_F", "_Soldier_M_F", "_Soldier_AR_F", "_Soldier_A_F", "_Soldier_M_F", "_Soldier_AR_F", "_Soldier_A_F", "_Soldier_M_F", "_Soldier_AR_F", "_Soldier_A_F"];

if (_grpType == "ASSAUT" OR _grpType == "RENFORT") then {
	_baseList = ["_Soldier_SL_F", "_Soldier_TL_F", "_Officer_F"];
	_simpleList = ["_Soldier_F", "_Soldier_GL_F", "_Soldier_lite_F", "_recon_F", "_Soldier_M_F"];
	_specialList = ["_medic_F", "_engineer_F", "soldier_repair_F", "_Soldier_AT_F", "_Soldier_exp_F"];
	_supportList = ["_Soldier_GL_F", "_Soldier_M_F", "_Soldier_AR_F", "_Soldier_AT_F", "_Soldier_AA_F"];
	_configGroup = [];

	_configGroup pushBack (selectRandom _baseList);
	private _nb = round (_nbUnit/4) + 1;
	for "_i" from 0 to _nb do {
		_configGroup pushBack (selectRandom _simpleList);
		_configGroup pushBack (selectRandom _specialList);
		_configGroup pushBack (selectRandom _supportList);
	};

};

if (_grpType == "DEFENSE") then {
	_baseList = ["_Soldier_SL_F", "_Soldier_M_F", "_Soldier_AR_F", "_Soldier_F", "_Soldier_A_F", "_Soldier_GL_F"];
	_specialList = ["_medic_F", "_engineer_F", "soldier_repair_F", "_Soldier_AT_F", "_Soldier_exp_F"];
	_supportList = ["_Soldier_GL_F", "_Soldier_M_F", "_Soldier_AR_F", "_Soldier_AT_F", "_Soldier_AA_F"];
	_configGroup = [];

	private _nb = round (_nbUnit/3) + 1;
	for "_i" from 0 to _nb do {
		_configGroup pushBack (selectRandom _baseList);
		_configGroup pushBack (selectRandom _specialList);
		_configGroup pushBack (selectRandom _supportList);
	};

};

if (_grpType == "SUPPORT") then {
	_configGroup = ["_medic_F", "soldier_repair_F", "_medic_F", "_engineer_F", "_medic_F", "_Soldier_exp_F", "_medic_F", "I_Soldier_A_F", "_medic_F", "soldier_repair_F", "_medic_F", "_engineer_F", "_medic_F", "_Soldier_exp_F", "_medic_F", "I_Soldier_A_F", "_medic_F", "soldier_repair_F", "_medic_F", "_engineer_F", "_medic_F", "_Soldier_exp_F", "_medic_F", "I_Soldier_A_F", "_Soldier_A_F", "_Soldier_A_F", "_Soldier_A_F", "_Soldier_A_F", "_Soldier_A_F", "_Soldier_A_F", "_Soldier_A_F", "_Soldier_A_F", "_Soldier_A_F", "_Soldier_A_F", "_Soldier_A_F", "_Soldier_A_F", "_Soldier_A_F", "_Soldier_A_F", "_Soldier_A_F", "_Soldier_A_F", "_Soldier_A_F", "_Soldier_A_F"];
};

_configGroup