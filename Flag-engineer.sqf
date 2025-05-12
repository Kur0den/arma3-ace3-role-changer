_triggerUnit = thisList select 0;

if (isPlayer _triggerUnit) then {
  private _currentRank = _triggerUnit getVariable ["ace_repair_engineer", 0];
  private _newRank = if (_currentRank == 1) then { 0 } else { 1 };
  private _newRankText = switch (_newRank) do {
    case 0: {"Not an Engineer"};
    case 1: {"an Engineer"};
  };
  _triggerUnit setVariable ["ace_repair_engineer", _newRank, true];
  private _msg = format ["%1 is %2", name _triggerUnit, _newRankText];
  ["RoleChanged", ["Role Updated", _msg]] remoteExec ["BIS_fnc_showNotification", 0];
};
