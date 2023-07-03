params ["_crew", ["_vehList", []], ["_alreadyIn", false]];

if (count _vehList == 0) then {
   _vehList = [_crew, true] call BIS_fnc_groupVehicles;   
};

{
      // Rempli les vehicules
      _vehCurrent = _x;
      {
            if(vehicle _x == _x and alive _x and isNull (assignedVehicle _x)) then {
                  if (isNull (driver _vehCurrent)) then {
                        _x assignAsDriver (_vehCurrent);
                        _x moveInDriver (_vehCurrent);
                  } else {
                        if (isNull (gunner _vehCurrent)) then {
                              _x assignAsGunner (_vehCurrent);
                        };
                        if (isNull (effectiveCommander _vehCurrent)) then {
                              _x assignAsCommander (_vehCurrent);
                        } else {
                              _x assignAsCargo(_vehCurrent);
                        };
                        if (_alreadyIn) then {
                              _x moveInAny(_vehCurrent);
                        };
                  };
            };
            
      } foreach units _crew;
} foreach _vehList;
 