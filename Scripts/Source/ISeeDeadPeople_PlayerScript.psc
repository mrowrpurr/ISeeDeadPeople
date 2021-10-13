scriptName ISeeDeadPeople_PlayerScript extends ReferenceAlias  

GlobalVariable property ISeeDeadPeople_Active auto

event OnInit()
    RegisterForSingleUpdate(Utility.RandomInt(8, 42))
endEvent

event OnUpdate()
    if ISeeDeadPeople_Active.Value
        ISeeDeadPeople_Active.Value = 0
        RegisterForSingleUpdate(Utility.RandomInt(8, 42))
    else
        ISeeDeadPeople_Active.Value = 1
        RegisterForSingleUpdate(Utility.RandomInt(0, 6))
    endIf
endEvent
