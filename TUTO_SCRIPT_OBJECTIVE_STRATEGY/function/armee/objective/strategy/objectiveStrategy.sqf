params ["_crew", "_strategyType"];

[_crew] call fn_deleteAllWaypoint;

if (isNull _crew) then {
	systemChat format ["objectiveStrategy Crew null %1", groupId(_crew)];
};

// Y a t il des vehicles?
private _vehs = [_crew, true] call BIS_fnc_groupVehicles;
private _nbVehs = count (_vehs);

private _crewPosition = position (leader _crew);

private _conquete = true;
if (_strategyType == "DEFENSE" OR _strategyType == "SUPPORT") then {
	_conquete = false;
};

private _nextMarker = "";

_nextMarker = [_crew, _conquete] call fn_getNextObjective;

_leader = (leader _crew);
_leader setVariable ["NextMarker", _nextMarker];
private _nextMarkerList = [];

if (debug) then {
	systemChat format ["NextObjective %1, %2, %3", (groupId _crew), _nextMarker, _strategyType];
};

// On rentre dans le vehicle
if (_nbVehs > 0) then {
	_veh = _vehs select 0;
	_mustLoad = false;
	{
		if (vehicle _x == _x) then {
			_mustLoad = true;
		}

	} forEach units _crew;
	if (_mustLoad and !(_veh isKindOf "Tank")) then {

		_wpLoad = _crew addWaypoint[_crewPosition, 0];
		_wpLoad setWaypointType "LOAD";
		_wpLoad setWaypointSpeed "FULL";
		_wpLoad setWaypointFormation "FILE";
		_wpLoad setWaypointBehaviour "SAFE";
		_wpLoad setWaypointTimeout [10,10,10];

	};
};

// Puis la tâche principale
if (_strategyType == "ASSAUT") then {

	_wp = _crew addWaypoint[getMarkerPos _nextMarker, 0];
	_wp setWaypointType "SAD";
	_wp setWaypointSpeed "FULL";
	_wp setWaypointFormation "STAG COLUMN";
	_wp setWaypointBehaviour "SAFE";

};

if (_strategyType == "DEFENSE") then {

	_wp = _crew addWaypoint[getMarkerPos _nextMarker, 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointSpeed "LIMITED";
	_wp setWaypointFormation "COLUMN";
	_wp setWaypointBehaviour "SAFE";

};

if (_strategyType == "SUPPORT") then {

	_wpMovePC = _crew addWaypoint[getMarkerPos _nextMarker, 0];
	_wpMovePC setWaypointType "SUPPORT";
	_wpMovePC setWaypointSpeed "FULL";
	_wpMovePC setWaypointFormation "STAG COLUMN";
	_wpMovePC setWaypointBehaviour "SAFE";

};

if (_strategyType == "GUARD") then {

	_wpMovePC = _crew addWaypoint[getMarkerPos _nextMarker, 0];
	_wpMovePC setWaypointType "GUARD";
	_wpMovePC setWaypointSpeed "FULL";
	_wpMovePC setWaypointFormation "STAG COLUMN";
	_wpMovePC setWaypointBehaviour "SAFE";

};

// On sort des vehicles (pour bien capturer la zone)
if (_nbVehs > 0) then {
	_veh = _vehs select 0;

	if (!(_veh isKindOf "Tank")) then {

		_wpUnLoad = _crew addWaypoint[getMarkerPos _nextMarker, 0];
		_wpUnLoad setWaypointType "UNLOAD";
		_wpUnLoad setWaypointSpeed "FULL";
		_wpUnLoad setWaypointFormation "COLUMN";
		_wpUnLoad setWaypointBehaviour "AWARE";

	};
};


// On récupère le nouvel objectif

_wp = _crew addWaypoint[getMarkerPos _nextMarker, 0];
_wp setWaypointType "SCRIPTED";
_wp setWaypointScript 'scripts\Waypoint\objective\getNextObjective.sqf'; 

// On ajoute le groupe à la liste des groupes Objective de la partie
_sauv = false;
{
	if (groupId(_crew) == groupId(_x select 0)) then {
		_sauv = true;
	};
} forEach ArrayGroupObjective;

if (!_sauv) then {
	ArrayGroupObjective pushBack [_crew, _strategyType];
};

_nextMarker