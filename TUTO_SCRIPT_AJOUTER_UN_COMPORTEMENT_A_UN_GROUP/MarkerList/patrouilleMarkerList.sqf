params ["_crew", "_markerList"];

[_crew] call fn_deleteAllWaypoint;

_spawnMarker = _markerList select 0;
_posSpawn = getMarkerPos _spawnMarker;
_dirSpawn = markerDir _spawnMarker;

// Y a t il des vehicles?
_vehs = [_crew, true] call BIS_fnc_groupVehicles;
_nbVehs = count (_vehs);

// On rentre dans le vehicle
if (_nbVehs > 0) then {
	_veh = _vehs select 0;
	_wpLoad= _crew addWaypoint[_posSpawn, 0];
	_wpLoad setWaypointType "LOAD";
	_wpLoad setWaypointSpeed "FULL";
	_wpLoad setWaypointFormation "COLUMN";
	_wpLoad setWaypointBehaviour "SAFE";
	_wpLoad setWaypointTimeout [30,30,30];
	_driver = driver _veh;
};

// Création des autres wp
{
	_wp = _crew addWaypoint[getmarkerpos _x, 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "LIMITED";
	
} forEach _markerList;

_wp = _crew addWaypoint[getmarkerpos _spawnMarker, 0];
_wp setWaypointType "CYCLE";
_wp setWaypointFormation "DIAMOND";