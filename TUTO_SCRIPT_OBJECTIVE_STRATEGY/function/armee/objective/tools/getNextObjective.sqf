comment "Documentation : https://community.bistudio.com/wiki/sort";

params ["_crew", "_conquete"];

private _nextObjectif = "";
private _nextMarker = "";
private _side = side _crew;

private _crewPosition = position (leader _crew);
private _vehs = [_crew, true] call BIS_fnc_groupVehicles;

// ASC Comme chaque camp à sa propre incrementation pas besoin de reverse
{
	private _weight = _x select 0;
	private _sideOwner = _x select 1;
	private _tag = _x select 2;
	private _marker = _x select 3;
	private _markerSpawn = _x select 4;
	private _conquis = _x select 5;
	private _isSideOrigin = _x select 6;

	if (_conquete and _side == _sideOwner and !_conquis) then {
		_nextObjectif = _tag;
		_nextMarker = _marker;
		break
	};

	if (!_conquete and _side == _sideOwner and _conquis) then {
		_nextObjectif = _tag;
		_nextMarker = _marker;
	};
	if (!_conquete and _side == _sideOwner and !_conquis) then {
		break
	};

} forEach ArrayObjective;


if (_nextMarker != "") then {
	driver vehicle (leader _crew) groupChat format ["%1, nouvel objectif: %2", groupID _crew, _nextObjectif];
} else {
	driver vehicle (leader _crew) groupChat format ["%1 Pas de nouvel objectif", groupID _crew];
};

_nextMarker