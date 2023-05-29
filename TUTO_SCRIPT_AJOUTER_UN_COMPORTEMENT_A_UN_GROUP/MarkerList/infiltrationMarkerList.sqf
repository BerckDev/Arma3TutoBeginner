params ["_crew", "_markerList", ["_speed", "LIMITED"]];

[_crew] call fn_deleteAllWaypoint;

_posObjectif = getmarkerpos(_markerList select 0);

// Création des wp
{
	_posObjectif = getmarkerpos _x;
	_wp = _crew addWaypoint[_posObjectif, 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed _speed;
	_wp setWaypointBehaviour "STEALTH";
	
} forEach _markerList;

// Actes de défense
_wpMovePC = _crew addWaypoint[_posObjectif, 0];
_wpMovePC setWaypointType "MOVE";
_wpMovePC setWaypointSpeed "FULL";
_wpMovePC setWaypointFormation "STAG COLUMN";
_wpMovePC setWaypointBehaviour "COMBAT";

_wpUnloadPC = _crew addWaypoint[_posObjectif, 0];
_wpUnloadPC setWaypointType "UNLOAD";

_wpSadPC = _crew addWaypoint[_posObjectif, 0];
_wpSadPC setWaypointType "SAD";

_wpGuardPC = _crew addWaypoint[_posObjectif, 0];
_wpGuardPC setWaypointType "GUARD";
_wpGuardPC setWaypointSpeed "LIMITED";
_wpGuardPC setWaypointFormation "DIAMOND";
_wpGuardPC setWaypointBehaviour "STEALTH";