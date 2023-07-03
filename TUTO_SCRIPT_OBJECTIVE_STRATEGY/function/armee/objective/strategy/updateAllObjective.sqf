{
	private _crewX = _x select 0;
	private _strategyX = _x select 1;

	if (!isNull _crewX and count(units _crewX) > 0) then {
		[_crewX] call fn_deleteAllWaypoint;
		[_crewX, _strategyX] call fn_objectiveStrategy;
	};

} forEach ArrayGroupObjective;