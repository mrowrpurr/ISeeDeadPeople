scriptName ISeeDeadPeople_CloakEffectScript extends ActiveMagicEffect  

Spell property ISeeDeadPeople_GhostAbility auto

event OnEffectStart(Actor target, Actor caster)
    target.AddSpell(ISeeDeadPeople_GhostAbility)
endEvent
