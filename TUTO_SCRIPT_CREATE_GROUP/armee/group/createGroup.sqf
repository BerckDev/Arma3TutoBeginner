params ["_side", "_sideLetter", "_tag", "_grpType", "_hasVehicle", "_posSpawn", "_dirSpawn", ["_nbUnit", 8], ["_crew", objNull], ["_veh", objNull]];

// On crée le groupe
if (isNull _crew) then {
	_crew = createGroup _side;
};
_crew setGroupID[_sideLetter + "_" + _grpType + "_" + _tag + "_" + groupID(_crew)];

// On crée le véhicle
if (_hasVehicle > 0 and isNull _veh) then {
	_vehType = [_side, _grpType] call fn_returnVehicleTypeFromSide;
	group_Veh_1 = [_posSpawn, _dirSpawn, _vehType, _crew] call BIS_fnc_spawnVehicle; 

	if (_grpType != "HELICO" and _grpType != "HELICO_COMBAT" and _grpType != "MARINE") then {
		_veh = group_Veh_1 select 0;
		_driver = driver _veh;
		deleteVehicle _driver;
	};

};

// On crée les unités
_configGroup = [_grpType] call fn_getConfigGroup;

_configUnitRank = ["LIEUTENANT", "CORPORAL", "", "", "", "", "SERGEANT", "", "LIEUTENANT", "CORPORAL", "", "", "", "", "SERGEANT", "", "", "", "", "", "LIEUTENANT", "", "", "", "", "", "", "", "","", "LIEUTENANT", "", "", "", "", "", "", "", "",""];

for "_i" from 0 to (_nbUnit - 1) do {
	_tagSoldat = _configGroup select _i;
	_u = [_crew, _sideLetter, _tagSoldat, _posSpawn, _dirSpawn] call fn_createSoldat;

	_rankSoldat = _configUnitRank select _i;
	if (_rankSoldat != "") then {
		_u setUnitRank _rankSoldat;
	};

};

private _vehList = [];
if (!isNull _veh) then {
	_crew addVehicle _veh;
	_vehList pushBack _veh;
};

// Remplit tous les vehicules du groupe
[_crew, _vehList, true] call fn_crewAssignInVehicle;

_crew