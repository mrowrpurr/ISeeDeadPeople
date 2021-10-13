scriptName ISeeDeadPeople_GhostEffect extends ActiveMagicEffect  

Spell property GhostAbilityFire  auto
Spell property GhostAbilityFrost auto

event OnEffectStart(Actor target, Actor caster)
    target.AddSpell(GhostAbilityFire)
    target.AddSpell(GhostAbilityFrost)
    Utility.WaitMenuMode(0.5)
    target.SetAlpha(0.6)
endEvent

event OnEffectFinish(Actor target, Actor caster)
    target.RemoveSpell(GhostAbilityFire)
    target.RemoveSpell(GhostAbilityFrost)
    
    ; FIX ME - This will set folks to Alpha 1 even if they are supposed to have another Alpha!
    target.SetAlpha(1.0)
endEvent
