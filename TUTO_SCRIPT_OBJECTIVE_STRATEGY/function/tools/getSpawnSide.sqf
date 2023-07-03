private ["_side"];

private _spawnMarker = "marker_spawn";

if (_side == EAST) then {
	_spawnMarker = "marker_spawn_red";
};
if (_side == WEST) then {
	_spawnMarker = "marker_spawn_blue";
};
if (_side == INDEPENDENT) then {
	_spawnMarker = "marker_spawn_green";
};

_spawnMarker