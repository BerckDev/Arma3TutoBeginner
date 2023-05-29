params ["_crew", "_markerList"];

[_crew] call fn_deleteAllWaypoint;

_firstStep = true;

// Y a t il des vehicles?
_vehs = [_crew, true] call BIS_fnc_groupVehicles;
_nbVehs = count (_vehs);
_marker = _markerList select 0;

{
	_marker = _x;

	if (_firstStep) then {
		_firstStep = false;

		_posMarker = getMarkerPos _marker;

		// On rentre dans le vehicle
		if (_nbVehs > 0) then {
			_veh = _vehs select 0;
			_wpLoad= _crew addWaypoint[_posMarker, 0];
			_wpLoad setWaypointType "LOAD";
			_wpLoad setWaypointSpeed "FULL";
			_wpLoad setWaypointFormation "FILE";
			_wpLoad setWaypointBehaviour "SAFE";
			_wpLoad setWaypointTimeout [25,25,25];
			_driver = driver _veh;
		};

		// Création du premier wp
		_wpInit = _crew addWaypoint[_posMarker, 0];
		_wpInit setWaypointType "MOVE";
		_wpInit setWaypointSpeed "FULL";
		_wpInit setWaypointFormation "STAG COLUMN";
		_wpInit setWaypointBehaviour "SAFE";
	} else {
		_wp = _crew addWaypoint[getmarkerpos _x, 0];
		_wp setWaypointType "SAD";
	};
	
} forEach _markerList;

_wp = _crew addWaypoint[getmarkerpos _marker, 0];
_wp setWaypointType "SENTRY";
_wp setWaypointFormation "DIAMOND";