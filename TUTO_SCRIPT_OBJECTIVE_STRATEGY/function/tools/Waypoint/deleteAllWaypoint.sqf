params ["_crew"];

for "_i" from count waypoints _crew - 1 to 0 step -1 do
{
	deleteWaypoint [_crew, _i];
};
for "_i" from count waypoints _crew - 1 to 0 step -1 do
{
	deleteWaypoint [_crew, _i];
	systemChat format ["WP %1", _i];
};
hint format ["reste %1", count waypoints _crew];