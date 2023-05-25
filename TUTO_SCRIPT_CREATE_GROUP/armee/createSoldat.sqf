params ["_crew", "_sideLetter", "_tagSoldat", "_spawnPos", "_dirSpawn"];

_u = _crew createUnit [_sideLetter + _tagSoldat, _spawnPos, [], 0, "NONE"];
_u setDir _dirSpawn;

_u