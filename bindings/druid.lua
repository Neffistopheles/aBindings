local _, enclass = UnitClass('player')
if enclass ~= 'DRUID' then return end

local b = {}; aBindings = b

b['R'] = [[    
    /run if IsShiftKeyDown() or IsControlKeyDown() or IsAltKeyDown() then return end; for z=1,172 do if IsAttackAction(z)then if not IsCurrentAction(z)then UseAction(z);end;end;end
    /cast [nomod,form:0] Wrath
    /cast [nomod,form:1] Maul
    /cast [nomod,form:3] Claw
    
    /cast [mod:shift,form:0] Moonfire
    /cast [mod:shift,form:1] Swipe
    /cast [mod:shift,form:3] Ferocious Bite
    
    /cast [mod:ctrl,form:0] Insect Swarm
    /cast [mod:ctrl,form:3] Shred
    
    /cast [mod:alt,form:3] Ravage
  ]]

b['T'] = [[
    /cast [nomod,form:0,@mouseover,help,nodead] [nomod,form:0,help,nodead] [nomod,form:0,@player] Cure Poison
    /cast [nomod,form:1] Enrage
    /cast [nomod,form:3] Tiger's Fury
    
    /cancelform [mod:shift]
    /cast [mod:shift,@mouseover,help,nodead] [mod:shift,help,nodead] [mod:shift,@player] Remove Curse
    
    /cancelform [mod:ctrl]
    /cast [mod:ctrl,@mouseover,help,nodead] [mod:ctrl,help,nodead] [mod:ctrl,@player] Innervate
    
    /cast [mod:alt,form:0] Tranquility
  ]]

b['F'] = [[
    /cancelform
    
    /cast [nomod,@mouseover,harm,nodead] [nomod] Entangling Roots
    
    /cast [mod:shift] War Stomp
    
    /cast [mod:ctrl] Nature's Grasp
    
    /cast [mod:alt] Nature's Swiftness
    /cast [mod:alt,@mouseover,harm,nodead] [mod:alt] Entangling Roots
  ]]

b['G'] = [[
    /cast [nomod,form:0,@mouseover,harm,nodead] [nomod,form:0] Hurricane
    /cast [nomod,form:1,@mouseover,harm,nodead] [nomod,form:1] Bash
    /cast [nomod,form:3] Pounce
    
    /cast [mod:shift,form:0,@mouseover,harm,nodead] [mod:shift,form:0] Hibernate
    /cast [mod:shift,form:1,@mouseover,harm,nodead] [mod:shift,form:1] Demoralizing Roar
    
    /cancelform [mod:ctrl]
    /cast [mod:ctrl,@mouseover,harm,nodead] [mod:ctrl] Faerie Fire
  ]]

b['B'] = [[
    /cast [nomod,form:1,@mouseover,harm,nodead] [nomod,form:1] Growl
    /cast [nomod,form:3] Rake
    
    /cast [mod:shift,form:1] Challenging Roar
    /cast [mod:shift,form:3] Rip
  ]]

b['V'] = [[
    /cast [nomod,form:0] Barkskin
    /cast [nomod,form:1] Frenzied Regeneration
    /cast [nomod,form:3] Cower
  ]]

b['C'] = [[
    
  ]]

b['X'] = [[
    /cancelform [nomod]
    /use [nomod] Medallion of the Horde
    /use [nomod] Insignia of the Horse
  ]]

b['Z'] = [[
    /cancelform
    
    /use [nomod] Health Potion
    
    /use [mod:shift,@mouseover,help,nodead] [mod:shift,help,nodead] [mod:shift,@player] Linen Bandage
    
    /use [mod:ctrl] Food
    
    /use [mod:alt] Water
  ]]

b['MOUSE4'] = [[
    /cancelform
    
    /cast [nomod] Cat Form
    
    /cast [mod:shift] Bear Form
    
    /cast [mod:ctrl,swimming] Aquatic Form; [mod:ctrl] Travel Form
  ]]

b['MOUSE5'] = [[
    /cast [nomod,form:1,@mouseover,harm,nodead] [nomod,form:1] Feral Charge
    /cast [nomod,form:3] Dash
    
    /cast [mod:shift,form:3] Prowl
  ]]

b['F5'] = [[
    /cancelform
    
    /cast [nomod,@mouseover,help,nodead] [nomod,help,nodead] [nomod,@player] Healing Touch
    
    /cast [mod:shift,@mouseover,help,nodead] [mod:shift,help,nodead] [mod:shift,@player] Regrowth
    
    /cast [mod:ctrl,@mouseover,help,nodead] [mod:ctrl,help,nodead] [mod:ctrl,@player] Rejuvenation
    
    /cast [mod:alt] Nature's Swiftness
    /cast [mod:alt,@mouseover,help,nodead] [mod:alt,help,nodead] [mod:alt,@player] Healing Touch
  ]]

b['F6'] = [[
    /cancelform
    
    /use [nomod] Mount
    
    /use [mod:ctrl] Teleport: Moonglade
    
    /use [mod:alt] Hearthstone
  ]]

b['F7'] = [[
    /cancelform
    
    /cast [nomod,@mouseover,help,nodead] [nomod,help,nodead] [nomod,@player] Mark of the Wild
    
    /cast [mod:shift,@mouseover,help,nodead] [mod:shift,help,nodead] [mod:shift,@player] Thorns
    
    /cast [mod:ctrl,@mouseover,help,nodead] [mod:ctrl] Rebirth
  ]]
