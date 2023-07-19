ArrayObjective = [];
ArrayGroupObjective = [];
debug = true;

/**** OBJECTIFS ****
********************/

[EAST, "Red QG", "red_QG", "red_QG", true] call fn_addObjective;
[EAST, "A", "A", "red_QG", true] call fn_addObjective;
[EAST, "B", "B", "red_QG", true] call fn_addObjective;
[EAST, "C", "C", "red_QG", true] call fn_addObjective;
[EAST, "Blue QG", "blue_QG", "blue_QG", false] call fn_addObjective;

[WEST, "Blue QG", "blue_QG", "blue_QG", true] call fn_addObjective;
[WEST, "A", "A", "blue_QG", false] call fn_addObjective;
[WEST, "B", "B", "blue_QG", false] call fn_addObjective;
[WEST, "C", "C", "blue_QG", false] call fn_addObjective;
[WEST, "Red QG", "red_QG", "red_QG", false] call fn_addObjective;

/**** GROUP DE COMBAT ****
*************************/

B_ASSAUT_ALPHA = createGroup WEST;

B_ASSAUT_ALPHA_ACTIVE = createTrigger ["EmptyDetector", position (leader B_ASSAUT_ALPHA)]; 
B_ASSAUT_ALPHA_ACTIVE setTriggerArea [0, 0, 0, false]; 
B_ASSAUT_ALPHA_ACTIVE setTriggerActivation ["NONE", "PRESENT", true];
B_ASSAUT_ALPHA_ACTIVE setTriggerStatements ["count (units B_ASSAUT_ALPHA) == 0", "B_ASSAUT_ALPHA = [WEST, 'ALPHA', 'ASSAUT', 0, 8] call fn_createGroupObjective;[B_ASSAUT_ALPHA, 'ASSAUT'] call fn_objectiveStrategy;", ""];

B_ASSAUT_BETA = createGroup WEST;

B_ASSAUT_BETA_ACTIVE = createTrigger ["EmptyDetector", position (leader B_ASSAUT_BETA)]; 
B_ASSAUT_BETA_ACTIVE setTriggerArea [0, 0, 0, false]; 
B_ASSAUT_BETA_ACTIVE setTriggerActivation ["NONE", "PRESENT", true];
B_ASSAUT_BETA_ACTIVE setTriggerStatements ["count (units B_ASSAUT_BETA) == 0", "B_ASSAUT_BETA = [WEST, 'BETA', 'ASSAUT', 0, 8] call fn_createGroupObjective;[B_ASSAUT_BETA, 'ASSAUT'] call fn_objectiveStrategy;", ""];


O_ASSAUT_ALPHA = createGroup EAST;

O_ASSAUT_ALPHA_ACTIVE = createTrigger ["EmptyDetector", position (leader O_ASSAUT_ALPHA)]; 
O_ASSAUT_ALPHA_ACTIVE setTriggerArea [0, 0, 0, false]; 
O_ASSAUT_ALPHA_ACTIVE setTriggerActivation ["NONE", "PRESENT", true];
O_ASSAUT_ALPHA_ACTIVE setTriggerStatements ["count (units O_ASSAUT_ALPHA) == 0", "O_ASSAUT_ALPHA = [EAST, 'ALPHA', 'ASSAUT', 1, 8] call fn_createGroupObjective;[O_ASSAUT_ALPHA, 'DEFENSE'] call fn_objectiveStrategy;", ""];

/**** TRIGGERS ****/
/******************/

_marker = "red_QG";
_trg = createTrigger ["EmptyDetector" , getMarkerPos _marker]; 
_trg setTriggerArea [100, 100, 0, false];
_trg setTriggerActivation ["EAST SEIZED", "PRESENT", true];
_trg setTriggerStatements ["this", "[EAST, 'Red QG'] call fn_validateObjective;", ""];

_trg = createTrigger ["EmptyDetector", getMarkerPos _marker]; 
_trg setTriggerArea [100, 100, 0, false]; 
_trg setTriggerActivation ["WEST SEIZED", "PRESENT", true];
_trg setTriggerStatements ["this", "[WEST, 'Red QG'] call fn_validateObjective;", ""];

_trg = createTrigger ["EmptyDetector", getMarkerPos _marker]; 
_trg setTriggerArea [100, 100, 0, false]; 
_trg setTriggerActivation ["INDEPENDENT SEIZED", "PRESENT", true];
_trg setTriggerStatements ["this", "[INDEPENDENT, 'Red QG'] call fn_validateObjective;", ""];

_marker = "A";
_trg = createTrigger ["EmptyDetector" , getMarkerPos _marker]; 
_trg setTriggerArea [100, 100, 0, false];
_trg setTriggerActivation ["EAST SEIZED", "PRESENT", true];
_trg setTriggerStatements ["this", "[EAST, 'A'] call fn_validateObjective;", ""];

_trg = createTrigger ["EmptyDetector", getMarkerPos _marker]; 
_trg setTriggerArea [100, 100, 0, false]; 
_trg setTriggerActivation ["WEST SEIZED", "PRESENT", true];
_trg setTriggerStatements ["this", "[WEST, 'A'] call fn_validateObjective;", ""];

_trg = createTrigger ["EmptyDetector", getMarkerPos _marker]; 
_trg setTriggerArea [100, 100, 0, false]; 
_trg setTriggerActivation ["INDEPENDENT SEIZED", "PRESENT", true];
_trg setTriggerStatements ["this", "[INDEPENDENT, 'A'] call fn_validateObjective;", ""];

_marker = "B";
_trg = createTrigger ["EmptyDetector" , getMarkerPos _marker]; 
_trg setTriggerArea [100, 100, 0, false];
_trg setTriggerActivation ["EAST SEIZED", "PRESENT", true];
_trg setTriggerStatements ["this", "[EAST, 'B'] call fn_validateObjective;", ""];

_trg = createTrigger ["EmptyDetector", getMarkerPos _marker]; 
_trg setTriggerArea [100, 100, 0, false]; 
_trg setTriggerActivation ["WEST SEIZED", "PRESENT", true];
_trg setTriggerStatements ["this", "[WEST, 'B'] call fn_validateObjective;", ""];

_trg = createTrigger ["EmptyDetector", getMarkerPos _marker]; 
_trg setTriggerArea [100, 100, 0, false]; 
_trg setTriggerActivation ["INDEPENDENT SEIZED", "PRESENT", true];
_trg setTriggerStatements ["this", "[INDEPENDENT, 'B'] call fn_validateObjective;", ""];

_marker = "C";
_trg = createTrigger ["EmptyDetector" , getMarkerPos _marker]; 
_trg setTriggerArea [100, 100, 0, false];
_trg setTriggerActivation ["EAST SEIZED", "PRESENT", true];
_trg setTriggerStatements ["this", "[EAST, 'C'] call fn_validateObjective;", ""];

_trg = createTrigger ["EmptyDetector", getMarkerPos _marker]; 
_trg setTriggerArea [100, 100, 0, false]; 
_trg setTriggerActivation ["WEST SEIZED", "PRESENT", true];
_trg setTriggerStatements ["this", "[WEST, 'C'] call fn_validateObjective;", ""];

_trg = createTrigger ["EmptyDetector", getMarkerPos _marker]; 
_trg setTriggerArea [100, 100, 0, false]; 
_trg setTriggerActivation ["INDEPENDENT SEIZED", "PRESENT", true];
_trg setTriggerStatements ["this", "[INDEPENDENT, 'C'] call fn_validateObjective;", ""];

_marker = "blue_QG";
_trg = createTrigger ["EmptyDetector" , getMarkerPos _marker]; 
_trg setTriggerArea [100, 100, 0, false];
_trg setTriggerActivation ["EAST SEIZED", "PRESENT", true];
_trg setTriggerStatements ["this", "[EAST, 'Blue QG'] call fn_validateObjective;", ""];

_trg = createTrigger ["EmptyDetector", getMarkerPos _marker]; 
_trg setTriggerArea [100, 100, 0, false]; 
_trg setTriggerActivation ["WEST SEIZED", "PRESENT", true];
_trg setTriggerStatements ["this", "[WEST, 'Blue QG'] call fn_validateObjective;", ""];

_trg = createTrigger ["EmptyDetector", getMarkerPos _marker]; 
_trg setTriggerArea [100, 100, 0, false]; 
_trg setTriggerActivation ["INDEPENDENT SEIZED", "PRESENT", true];
_trg setTriggerStatements ["this", "[INDEPENDENT, 'Blue QG'] call fn_validateObjective;", ""];

if (debug) then {
	player addAction
	[
		"ArrayObjective",
		{
			params ["_target", "_caller", "_actionId", "_arguments"];
			hint str ArrayObjective;
		},
		nil,
		1.5,
		true,
		true,
		"",
		"true", // _target, _this, _originalTarget
		50,
		false,
		"",
		""
	];
	player addAction
	[
		"ArrayGroupObjective",
		{
			params ["_target", "_caller", "_actionId", "_arguments"];
			hint str ArrayGroupObjective;
		},
		nil,
		1.5,
		true,
		true,
		"",
		"true", // _target, _this, _originalTarget
		50,
		false,
		"",
		""
	];
};

