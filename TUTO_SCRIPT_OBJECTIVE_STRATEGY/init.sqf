// Objective //
///////////////

// Objective - group
fn_createGroupObjective = compile preprocessFile "function\armee\objective\group\createGroupObjective.sqf";

// Objective - objective
fn_addObjective = compile preprocessFile "function\armee\objective\objective\addObjective.sqf";
fn_validateObjective = compile preprocessFile "function\armee\objective\objective\validateObjective.sqf";

// Objective - spawn
fn_getSpawnMarkerObjective = compile preprocessFile "function\armee\objective\spawn\getSpawnMarkerObjective.sqf";

// Objective - strategy
fn_objectiveStrategy = compile preprocessFile "function\armee\objective\strategy\objectiveStrategy.sqf";
fn_updateAllObjective = compile preprocessFile "function\armee\objective\strategy\updateAllObjective.sqf";

// Objective - tools
fn_getNextObjective = compile preprocessFile "function\armee\objective\tools\getNextObjective.sqf";

// init.sqf précédent //
////////////////////////

fn_deleteAllWaypoint = compile preprocessFile "function\tools\Waypoint\deleteAllWaypoint.sqf";

// Tools //
///////////
fn_returnSideLetter = compile preprocessFile "function\tools\returnSideLetter.sqf";
fn_getSpawnSide = compile preprocessFile "function\tools\getSpawnSide.sqf"; // << Ajouté
// Tools - vehicle
fn_returnVehicleTypeFromSide = compile preprocessFile "function\tools\vehicle\returnVehicleTypeFromSide.sqf";
fn_crewAssignInVehicle = compile preprocessFile "function\tools\vehicle\crewAssignInVehicle.sqf";
// Soldat
fn_createSoldat = compile preprocessFile "function\armee\createSoldat.sqf";
// Group
fn_createGroup = compile preprocessFile "function\armee\group\createGroup.sqf";
// Group - Tools
fn_getConfigGroup = compile preprocessFile "function\armee\group\tools\getConfigGroup.sqf";

// Fin init.sqf précédent //
////////////////////////////

// Game
fn_createGame = compile preprocessFile "function\createGame.sqf";

[] call fn_createGame;