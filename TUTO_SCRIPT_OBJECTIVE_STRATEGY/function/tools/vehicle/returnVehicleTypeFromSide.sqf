params ["_side", "_grpType"];

private _vehType = "O_Truck_02_covered_F";

if (_side == west) then {
	if (_grpType == "assaut") then {
		_vehType = "B_APC_Wheeled_01_cannon_F";
	};
	if (_grpType == "defense") then {
		_vehType = "O_Truck_02_covered_F";
	};
	if (_grpType == "support") then {
		_vehType = selectRandom ["O_Truck_02_Ammo_F", "O_Truck_02_medical_F", "O_Truck_02_box_F", "O_Truck_02_fuel_F"];
	};
	if (_grpType == "patrouille") then {
		_vehType = "B_MRAP_01_F";
	};
	if (_grpType == "renfort") then {
		_vehType = "B_MRAP_01_F";
	};
	if (_grpType == "GARNISON") then {
		_vehType = "O_Truck_02_covered_F";
	};
	if (_grpType == "HELICO") then {
		_vehType = "B_Heli_Transport_01_F";
	};
	if (_grpType == "HELICO_EXFILTRATION") then {
		_vehType = "B_Heli_Transport_01_F";
	};
	if (_grpType == "HELICO_COMBAT") then {
		_vehType = "B_Heli_Attack_01_dynamicLoadout_F";
	};
	if (_grpType == "HELICO_MINI") then {
		_vehType = "B_Heli_Light_01_F";
	};
	if (_grpType == "HELICO_COMBAT_MINI") then {
		_vehType = "B_Heli_Light_01_dynamicLoadout_F";
	};
	if (_grpType == "TRUCK_EXFILTRATION") then {
		_vehType = "O_Truck_02_transport_F";
	};
	if (_grpType == "APC_EXFILTRATION") then {
		_vehType = "B_APC_Wheeled_01_cannon_F";
	};
	if (_grpType == "MRAP_EXFILTRATION") then {
		_vehType = "B_MRAP_01_F";
	};
	if (_grpType == "MARINE") then {
		_vehType = "B_Boat_Armed_01_minigun_F";
	};
	if (_grpType == "MARINE_COMMANDO") then {
		_vehType = "B_Boat_Transport_01_F";
	};
	if (_grpType == "DEBARQUEMENT") then {
		_vehType = "B_APC_Wheeled_01_cannon_F";
	};
	if (_grpType == "TANK") then {
		_vehType = "B_MBT_01_cannon_F";
	};
	if (_grpType == "ARTILLERIE") then {
		_vehType = "B_MBT_01_arty_F";
	};
	if (_grpType == "ANTIAERIEN") then {
		_vehType = "B_APC_Tracked_01_AA_F";
	};
	if (_grpType == "CONVOI") then {
		_vehType = selectRandom ["O_Truck_02_Ammo_F", "O_Truck_02_medical_F", "O_Truck_02_box_F", "O_Truck_02_fuel_F", "O_Truck_02_transport_F", "O_Truck_02_covered_F"];
	};
	if (_grpType == "CHASSEUR") then {
		_vehType = "B_Plane_CAS_01_dynamicLoadout_F";
	};


};
if (_side == east) then {
	if (_grpType == "assaut") then {
		_vehType = "O_APC_Tracked_02_cannon_F";
	};
	if (_grpType == "defense") then {
		_vehType = "O_Truck_02_covered_F";
	};
	if (_grpType == "support") then {
		_vehType = selectRandom ["O_Truck_02_Ammo_F", "O_Truck_02_medical_F", "O_Truck_02_box_F", "O_Truck_02_fuel_F"];
	};
	if (_grpType == "patrouille") then {
		_vehType = "O_MRAP_02_F";
	};
	if (_grpType == "renfort") then {
		_vehType = "O_MRAP_02_F";
	};
	if (_grpType == "GARNISON") then {
		_vehType = "O_Truck_02_covered_F";
	};
	if (_grpType == "HELICO") then {
		_vehType = "O_Heli_Light_02_dynamicLoadout_F";
	};
	if (_grpType == "HELICO_EXFILTRATION") then {
		if (war) then {
			_vehType = "O_Heli_Light_02_dynamicLoadout_F";
		} else {
			_vehType = "O_Heli_Light_02_unarmed_F";
		};
	};
	if (_grpType == "HELICO_COMBAT") then {
		_vehType = "O_Heli_Attack_02_dynamicLoadout_F";
	};
	if (_grpType == "TRUCK_EXFILTRATION") then {
		_vehType = "O_Truck_02_transport_F";
	};
	if (_grpType == "APC_EXFILTRATION") then {
		_vehType = "O_APC_Wheeled_02_rcws_v2_F";
	};
	if (_grpType == "MRAP_EXFILTRATION") then {
		_vehType = "O_MRAP_02_F";
	};
	if (_grpType == "MARINE") then {
		_vehType = "O_Boat_Armed_01_hmg_F";
	};
	if (_grpType == "MARINE_COMMANDO") then {
		_vehType = "O_Boat_Transport_01_F";
	};
	if (_grpType == "DEBARQUEMENT") then {
		_vehType = "O_APC_Wheeled_02_rcws_v2_F";
	};
	if (_grpType == "TANK") then {
		_vehType = "O_MBT_02_cannon_F";
	};
	if (_grpType == "ARTILLERIE") then {
		_vehType = "O_MBT_02_arty_F";
	};
	if (_grpType == "ANTIAERIEN") then {
		_vehType = "O_APC_Tracked_02_AA_F";
	};
	if (_grpType == "CONVOI") then {
		_vehType = selectRandom ["O_Truck_02_Ammo_F", "O_Truck_02_medical_F", "O_Truck_02_box_F", "O_Truck_02_fuel_F", "O_Truck_02_transport_F", "O_Truck_02_covered_F", "O_APC_Tracked_02_cannon_F", "O_APC_Tracked_02_cannon_F", "O_APC_Tracked_02_cannon_F", "O_APC_Wheeled_02_rcws_v2_F"];
	};
	if (_grpType == "CHASSEUR") then {
		_vehType = "O_Plane_CAS_02_dynamicLoadout_F";
	};
};
if (_side == independent) then {
	if (_grpType == "assaut") then {
		_vehType = "I_APC_tracked_03_cannon_F";
	};
	if (_grpType == "defense") then {
		_vehType = "I_Truck_02_covered_F";
	};
	if (_grpType == "support") then {
		_vehType = selectRandom ["I_Truck_02_ammo_F", "I_Truck_02_medical_F", "I_Truck_02_box_F", "I_Truck_02_fuel_F"];
	};
	if (_grpType == "patrouille") then {
		_vehType = "I_MRAP_03_F";
	};
	if (_grpType == "renfort") then {
		_vehType = "I_MRAP_03_F";
	};
	if (_grpType == "GARNISON") then {
		_vehType = "I_Truck_02_covered_F";
	};
	if (_grpType == "HELICO") then {
		_vehType = selectRandom ["O_Heli_Light_02_unarmed_F", "I_Heli_light_03_unarmed_F"];
	};
	if (_grpType == "HELICO_EXFILTRATION") then {
		if (war) then {
			_vehType = selectRandom ["O_Heli_Light_02_dynamicLoadout_F", "I_Heli_light_03_dynamicLoadout_F"];
		} else {
			_vehType = selectRandom ["O_Heli_Light_02_unarmed_F", "I_Heli_light_03_unarmed_F"];
		};
	};
	if (_grpType == "HELICO_COMBAT") then {
		_vehType = "I_Heli_light_03_dynamicLoadout_F";
	};
	if (_grpType == "TRUCK_EXFILTRATION") then {
		_vehType = "I_Truck_02_transport_F";
	};
	if (_grpType == "APC_EXFILTRATION") then {
		_vehType = selectRandom ["I_APC_tracked_03_cannon_F", "I_APC_Wheeled_03_cannon_F"];
	};
	if (_grpType == "MRAP_EXFILTRATION") then {
		_vehType = "I_MRAP_03_F";
	};
	if (_grpType == "MARINE") then {
		_vehType = "I_Boat_Armed_01_minigun_F";
	};
	if (_grpType == "MARINE_COMMANDO") then {
		_vehType = "I_Boat_Transport_01_F";
	};
	if (_grpType == "DEBARQUEMENT") then {
		_vehType = "I_APC_tracked_03_cannon_F";
	};
	if (_grpType == "TANK") then {
		_vehType = "I_MBT_03_cannon_F";
	};
	if (_grpType == "ARTILLERIE") then {
		_vehType = "I_Truck_02_MRL_F";
	};
	if (_grpType == "ANTIAERIEN") then {
		_vehType = "I_LT_01_AA_F";
	};
	if (_grpType == "CONVOI") then {
		_vehType = selectRandom ["I_Truck_02_ammo_F", "I_Truck_02_medical_F", "I_Truck_02_box_F", "I_Truck_02_fuel_F", "I_Truck_02_covered_F", "I_Truck_02_transport_F"];
	};
	if (_grpType == "CHASSEUR") then {
		_vehType = "I_Plane_Fighter_03_dynamicLoadout_F";
	};

};

_vehType