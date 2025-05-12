_isPromoted = false;
_isDemoted = false;
_triggerUnit = thisList select 0;

if (isPlayer _triggerUnit) then {
    if (_triggerUnit getVariable ["ace_medical_medicClass", 0] != 2) then {
        _triggerUnit setVariable ["ace_medical_medicClass", 2, true];
        _isPromoted = true;
    } else {
        _triggerUnit setVariable ["ace_medical_medicClass", 0, true];
        _isDemoted = true;
    };
};

if (_isPromoted) then {
  private _msg = format ["%1 promoted to Medic", name _triggerUnit];
  ["TaskAssigned", ["Role Updated", _msg]] remoteExec ["BIS_fnc_showNotification", 0];
};
if (_isDemoted) then {
  private _msg = format ["%1 demoted to Medic", name _triggerUnit];
  ["TaskCanceled", ["Role Updated", _msg]] remoteExec ["BIS_fnc_showNotification", 0];
};
