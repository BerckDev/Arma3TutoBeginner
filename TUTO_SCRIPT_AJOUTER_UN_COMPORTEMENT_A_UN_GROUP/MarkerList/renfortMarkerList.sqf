params ["_crew", "_markerList", "_leader", ["_join", true]];

[_crew] call fn_deleteAllWaypoint;

_marker = _markerList select 0;

// Création des wp
{
	_marker = _x;
	_wp = _crew addWaypoint[getmarkerpos _x, 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "LIMITED";
	_wp setWaypointBehaviour "SAFE";
	
} forEach _markerList;


// Renfort
_posRenfort = getmarkerpos _marker;

_wpMovePC = _crew addWaypoint[_posRenfort, 0];
_wpMovePC setWaypointType "MOVE";
_wpMovePC setWaypointSpeed "FULL";
_wpMovePC setWaypointFormation "STAG COLUMN";
_wpMovePC setWaypointBehaviour "COMBAT";

_wpUnloadPC = _crew addWaypoint[_posRenfort, 0];
_wpUnloadPC setWaypointType "UNLOAD";

if (alive _leader) then {
	if (_join) then {
		{
			[_x] joinsilent grpNull;
			[_x] joinsilent _leader;
		} foreach units _crew;
	} else {
		leader _crew doFollow leader _leader;
	};
} else {
	_wpGuardPC = _crew addWaypoint[_posRenfort, 0];
	_wpGuardPC setWaypointType "GUARD";
	_wpGuardPC setWaypointSpeed "LIMITED";
	_wpGuardPC setWaypointFormation "DIAMOND";
	_wpGuardPC setWaypointBehaviour "AWARE";
};
