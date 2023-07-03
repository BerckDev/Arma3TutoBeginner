params ["_side"];

private _spawnMarkerSelect = "";

// ASC Comme chaque camp à sa propre incrementation pas besoin de reverse
{
	private _weight = _x select 0;
	private _sideOwner = _x select 1;
	private _tag = _x select 2;
	private _marker = _x select 3;
	private _markerSpawn = _x select 4;
	private _conquis = _x select 5;
	private _isSideOrigin = _x select 6;

	if (_side == _sideOwner and _conquis) then {
		_spawnMarkerSelect = _markerSpawn;
	};

	if (_side == _sideOwner and !_conquis) then {
		comment "break";
	};

} forEach ArrayObjective;

// Si aucun spawn select
if (_spawnMarkerSelect == "") then {
	_spawnMarkerSelect = [_side] call fn_getSpawnSide;
};

_spawnMarkerSelect