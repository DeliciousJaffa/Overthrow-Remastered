params ["_i","_s","_e","_c","_p"];

{
    if(typename _x isEqualTo "GROUP") then {
        {
            if !(_x call OT_fnc_hasOwner) then {
                deleteVehicle _x;
                sleep 0.2;
            };
        }foreach(units _x);
        deleteGroup _x;
    }else{
        if !(_x call OT_fnc_hasOwner) then {
            deleteVehicle _x;
        };
    };
    sleep 0.2;
}foreach(spawner getVariable [_i,[]]);
spawner setVariable [_i,[],false];
