params ["_crew", "_markerList"];

[_crew] call fn_deleteAllWaypoint;

_marker = _markerList select 0;

{
	_marker = _x;
	_wp = _crew addWaypoint[getmarkerpos _x, 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "LIMITED";
	_wp setWaypointBehaviour "SAFE";
	
} forEach _markerList;

_posSupport = getmarkerpos _marker;

_wpMovePC = _crew addWaypoint[_posSupport, 0];
_wpMovePC setWaypointType "MOVE";
_wpMovePC setWaypointSpeed "FULL";
_wpMovePC setWaypointFormation "STAG COLUMN";
_wpMovePC setWaypointBehaviour "COMBAT";

_wpUnloadPC = _crew addWaypoint[_posSupport, 0];
_wpUnloadPC setWaypointType "UNLOAD";

_wpSadPC = _crew addWaypoint[_posSupport, 0];
_wpSadPC setWaypointType "SAD";

_wpGuardPC = _crew addWaypoint[_posSupport, 0];
_wpGuardPC setWaypointType "SUPPORT";
_wpGuardPC setWaypointSpeed "LIMITED";
_wpGuardPC setWaypointFormation "DIAMOND";
_wpGuardPC setWaypointBehaviour "AWARE";