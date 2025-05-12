_triggerUnit = thisList select 0;

if (isPlayer _triggerUnit) then {
  private _currentRank = _triggerUnit getVariable ["ace_medical_medicClass", 0];
  private _newRank = if (_currentRank >= 2) then { 0 } else { _currentRank + 1 };
  private _newRankText = switch (_newRank) do {
    case 0: {"Not a Medic"};
    case 1: {"a Combat Medic"};
    case 2: {"a Doctor"};
  };
  _triggerUnit setVariable ["ace_medical_medicClass", _newRank, true];
  private _msg = format ["%1 is %2", name _triggerUnit, _newRankText];
  ["RoleChanged", ["Role Updated", _msg]] remoteExec ["BIS_fnc_showNotification", 0];
};
