scriptName ISeeDeadPeople_PlayerEffect extends ActiveMagicEffect  

ImageSpaceModifier property EtherealISM auto

event OnEffectStart(Actor target, Actor caster)
    Debug.MessageBox("I see dead people...")
    EtherealISM.Apply()
endEvent

event OnEffectFinish(Actor target, Actor caster)
    EtherealISM.Remove()
endEvent
