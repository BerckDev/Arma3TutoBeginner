params ["_side", "_tag", "_grpType", "_hasVehicle", ["_nbUnit", 8], ["_crew", objNull], ["_spawnMarker", ""], ["_veh", objNull]];

// On récupère la première position
if (_spawnMarker == "") then {
	_spawnMarker = [_side] call fn_getSpawnMarkerObjective;
};

_posSpawn = getMarkerPos _spawnMarker;
_dirSpawn = markerDir _spawnMarker;

_crew = [_side, _tag, _grpType, _hasVehicle, _posSpawn, _dirSpawn, _nbUnit, _crew, _veh] call fn_createGroup;

_crew