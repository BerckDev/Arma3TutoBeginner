params ["_side", "_tag"];


{
	private _weight = _x select 0;
	private _sideOwner = _x select 1;
	private _tagX = _x select 2;
	private _marker = _x select 3;
	private _markerSpawn = _x select 4;
	private _conquis = _x select 5;
	private _isSideOrigin = _x select 6;

	if (_tagX == _tag) then {

		if (_sideOwner == _side) then {
			_x set [5, true];

			if (_side == EAST and _marker != "") then {
				_marker setmarkercolor "colorred";
				red_chef_etat_major globalChat format ["%1 est à %2 !", _tag, _side];
			};
			if (_side == WEST and _marker != "") then {
				_marker setmarkercolor "colorblue";
				blue_chef_etat_major globalChat format ["%1 est à %2 !", _tag, _side];
			};
			if (_side == INDEPENDENT and _marker != "") then {
				_marker setmarkercolor "colorgreen";
				green_chef_etat_major globalChat format ["%1 est à %2 !", _tag, _side];
			};
			if (_side == CIVILIAN and _marker != "") then {
				_marker setmarkercolor "colorblack";
			};
		} else {
			_x set [5, false];
			if (_isSideOrigin) then {
				if (_side == EAST and _marker != "") then {
					red_chef_etat_major globalChat format ["%1 est perdu par %2!", _tag, _side];
				};
				if (_side == WEST and _marker != "") then {
					blue_chef_etat_major globalChat format ["%1 est perdu par %2!", _tag, _side];
				};
				if (_side == INDEPENDENT and _marker != "") then {
					green_chef_etat_major globalChat format ["%1 est perdu par %2!", _tag, _side];
				};
			};
		};

	};
	
} forEach ArrayObjective;
