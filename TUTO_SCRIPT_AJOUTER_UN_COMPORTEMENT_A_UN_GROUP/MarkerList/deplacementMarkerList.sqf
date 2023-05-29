params ["_crew", "_marker", "_markerList"];

{

	_wpInit = _crew addWaypoint[getMarkerPos _x, 0];
	_wpInit setWaypointType "MOVE";
	_wpInit setWaypointSpeed "FULL";
	_wpInit setWaypointFormation "COLUMN";
	_wpInit setWaypointBehaviour "SAFE";
	_wpInit setWaypointTimeout [10,10,10];

} forEach _markerList;

_wp = _crew addWaypoint[getmarkerpos _marker, 0];
_wp setWaypointType "CYCLE";