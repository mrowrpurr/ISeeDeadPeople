scriptName ISeeDeadPeople_PlayerEffect extends ActiveMagicEffect  

Actor property HodRef auto

ImageSpaceModifier property EtherealISM auto

Spell property ISeeDeadPeople_GhostAbility auto

Actor[] DeadPeople

event OnEffectStart(Actor target, Actor caster)
    ActorBase baseHod = HodRef.GetActorBase()

    DeadPeople = new Actor[30]
    int count = 30
    int i = 0
    while i < count
        Actor deadPerson = target.PlaceAtMe(baseHod, abInitiallyDisabled = true) as Actor
        ; target.MoveTo(target, )
        DeadPeople[i] = deadPerson
        deadPerson.AddSpell(ISeeDeadPeople_GhostAbility)
        ; deadPerson.EnableAI(false)
        i += 1
    endWhile

    EtherealISM.Apply()

    i = 0
    while i < count
        DeadPeople[i].Enable(abFadeIn = true)
        DeadPeople[i].AddSpell(ISeeDeadPeople_GhostAbility)
        i += 1
    endWhile

    ; Debug.MessageBox("I see dead people...")
endEvent

event OnEffectFinish(Actor target, Actor caster)
    int i = 0
    while i < DeadPeople.Length
        DeadPeople[i].Disable(abFadeOut = true)
        DeadPeople[i].Delete()
        i += 1
    endWhile

    EtherealISM.Remove()
endEvent
