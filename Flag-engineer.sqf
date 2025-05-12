_isPromoted = false;
_isDemoted = false;
_triggerUnit = thisList select 0;

if (isPlayer _triggerUnit) then {
    if (_triggerUnit getVariable ["ace_repair_engineer", 0] != 1) then {
        _triggerUnit setVariable ["ace_repair_engineer", 1, true];
        _isPromoted = true;
    } else {
        _triggerUnit setVariable ["ace_repair_engineer", 0, true];
        _isDemoted = true;
    };
};

if (_isPromoted) then {
  private _msg = format ["%1 promoted to Engineer", name _triggerUnit];
  ["TaskAssigned", ["Role Updated", _msg]] remoteExec ["BIS_fnc_showNotification", 0];
};
if (_isDemoted) then {
  private _msg = format ["%1 demoted to Engineer", name _triggerUnit];
  ["TaskCanceled", ["Role Updated", _msg]] remoteExec ["BIS_fnc_showNotification", 0];
};
