while { true } do {
  _units = allUnits - ( playableUnits + switchableUnits );
  {
    if(((side _x) == east) || ((side _x) == resistance))then {
    if(isNil { _x getVariable "unitHasFSM" } && {!captive _x}) then {
        _x execFSM "aegis_surrender.fsm";
        _x setVariable ["unitHasFSM", true];
        sleep 1;
    };
   };
  } forEach _units;
};
sleep 1;

_this action ["useWeapon", player, player, 2];
