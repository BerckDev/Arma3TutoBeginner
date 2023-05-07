params ["_side", "_tagSoldat", "_spawnPos"];

private _sideLetter = [_side] call fn_returnSideLetter;

private _crew = createGroup _side;
_crew setGroupID[_sideLetter + "_TUTO_" + groupID(_crew)];
_u = _crew createUnit [_sideLetter + _tagSoldat, _spawnPos, [], 0, "NONE"];

_u