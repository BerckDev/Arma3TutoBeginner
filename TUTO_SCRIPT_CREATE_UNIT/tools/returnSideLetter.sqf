params ["_side"];

private _sideLetter = "C";

if (_side == EAST) then {
	_sideLetter = "O";
};
if (_side == WEST) then {
	_sideLetter = "B";
};
if (_side == INDEPENDENT) then {
	_sideLetter = "I";
};

_sideLetter