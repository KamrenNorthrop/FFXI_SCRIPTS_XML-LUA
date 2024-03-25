local profile = {};
local sets = {
    ['Idle'] = {
        Main = 'Terra\'s Staff',
        Ammo = 'Phtm. Tathlum',
        Head = 'Genie Tiara',
        Neck = 'Prudence Torque',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Ethereal Earring',
        Body = 'Sorcerer\'s Coat',
        Hands = 'Zenith Mitts',
        Ring1 = 'Astral Ring',
        Ring2 = 'Ether Ring',
        Back = 'Umbra Cape',
        Waist = 'Hierarch Belt',
        Legs = 'Zenith Slacks',
        Feet = 'Rostrum Pumps',
    },
    ['Nuke'] = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Wzd. Petasos +1',
        --Neck = 'Elemental Torque',
        Neck = 'Prudence Torque',
        Ear1 = 'Morion Earring +1',
        Ear2 = 'Moldavite Earring',
        Body = 'Igqira Weskit',
        --Hands = 'Wizard\'s Gloves',
        Hands = 'Zenith Mitts',
        Ring1 = 'Snow Ring',
        Ring2 = 'Snow Ring',
        Legs = 'Mahatma Slops',
        Feet = 'Custom M Boots',
        Back = 'Prism Cape',
        Waist = 'Sorcerer\'s Belt',
    },
    ['HP_Down'] = {
        Ammo = 'Tiphia Sting',
        Head = 'Zenith Crown',
        Neck = 'Checkered Scarf',
        Body = 'Black Cotehardie',
        Hands = 'Zenith Mitts',
        Ring1 = 'Astral Ring',
        Ring2 = 'Ether Ring',
        Waist = 'Penitent\'s Rope',
        Legs = 'Zenith Slacks',
        Feet = 'Rostrum Pumps',
    },
    ['Rest'] = {
        Main = 'Pluto\'s Staff',
        Ammo = 'Phtm. Tathlum',
        Head = 'Wzd. Petasos +1',
        Neck = 'Checkered Scarf',
        Ear1 = 'Warlock\'s Earring',
        Ear2 = 'Relaxing Earring',
        Body = 'Errant Hpl.',
        Hands = 'Zenith Mitts',
        Ring1 = 'Astral Ring',
        Ring2 = 'Ether Ring',
        Waist = 'Hierarch Belt',
        Legs = 'Baron\'s Slops',
        Feet = 'Rostrum Pumps',
    },
    ['Enfeeble'] = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Genie Tiara',
        Neck = 'Enfeebling Torque',
        Ear1 = 'Morion Earring +1',
        Ear2 = 'Morion Earring',
        Body = 'Wizard\'s Coat',
        Hands = 'Zenith Mitts',
        Ring1 = 'Snow Ring',
        Ring2 = 'Snow Ring',
        Back = 'Prism Cape',
        Waist = 'Sorcerer\'s Belt',
        Legs = 'Nashira Seraweels',
        Feet = 'Rostrum Pumps',
    },
    ['Dark'] = {
        Main = 'Pluto\'s Staff',
        Ammo = 'Phtm. Tathlum',
        Head = 'Wzd. Petasos +1',
        Neck = 'Dark Torque',
        Ear1 = 'Morion Earring +1',
        Ear2 = 'Morion Earring',
        Body = 'Errant Hpl.',
        Hands = 'Sorcerer\'s Gloves',
        Ring1 = 'Snow Ring',
        Ring2 = 'Snow Ring',
        Back = 'Prism Cape',
        Waist = 'Sorcerer\'s Belt',
        Legs = 'Wizard\'s Tonban',
        Feet = 'Rostrum Pumps',
    },
    ['Bmind'] = {
        Main = 'Kirin\'s Pole',
        Ammo = 'Phtm. Tathlum',
        Head = 'Zenith Crown',
        Neck = 'Justice Badge',
        Body = 'Errant Hpl.',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Sapphire Ring',
        Ring2 = 'Sapphire Ring',
        Back = 'Prism Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Mahatma Slops',
        Feet = 'Rostrum Pumps',
    },
    ['EnfeebleMind'] = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Genie Tiara',
        Neck = 'Enfeebling Torque',
        Ear1 = 'Geist Earring',
        Ear2 = 'Geist Earring',
        Body = 'Wizard\'s Coat',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Astral Ring',
        Ring2 = 'Astral Ring',
        Back = 'Prism Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Nashira Seraweels',
        Feet = 'Rostrum Pumps',
    },
    ['FastCast'] = {
        Feet = 'Rostrum Pumps',
        Ear1 = 'Loquac. Earring',
        Back = 'Warlock\'s Mantle',
    },
    ['ElementalDebuff'] = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Wzd. Petasos +1',
        Neck = 'Prudence Torque',
        Ear1 = 'Morion Earring +1',
        Ear2 = 'Morion Earring',
        Body = 'Errant Hpl.',
        Hands = 'Errant Cuffs',
        Ring1 = 'Snow Ring',
        Ring2 = 'Snow Ring',
        Back = 'Prism Cape',
        Waist = 'Sorcerer\'s Belt',
        Legs = 'Mahatma Slops',
        Feet = 'Rostrum Pumps',
    },
    ['City'] = {
        Head = 'Goblin Coif',
        Neck = 'Uggalepih Pendant',
        Range = 'Ebisu Fishing Rod',
        Ear1 = 'Magnetic Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Fisherman\'s Apron',
        Hands = 'Zenith Mitts',
        Ring1 = 'Sorcerer\'s Ring',
        Ring2 = 'Snow Ring',
        Back = 'Prism Cape',
        Waist = 'Sorcerer\'s Belt',
        Legs = 'Wizard\'s tonban',
        Feet = 'Rostrum Pumps',
    },
};
profile.Sets = sets;

profile.Packer = {
};

local ElementalStaffTable = {
    ['Fire'] = 'Fire Staff',
    ['Earth'] = 'Terra\'s Staff',
    ['Water'] = 'Water Staff',
    ['Wind'] = 'Wind Staff',
    ['Ice'] = 'Aquilo\'s Staff',
    ['Thunder'] = 'Jupiter\'s Staff',
    ['Light'] = 'Light Staff',
    ['Dark'] = 'Pluto\'s Staff'
};

local DayElementTable = {
    ['Firesday'] = 'Fire',
    ['Earthsday'] = 'Earth',
    ['Watersday'] = 'Water',
    ['Windsday'] = 'Wind',
    ['Iceday'] = 'Ice',
    ['Lightningday'] = 'Thunder',
    ['Lightsday'] = 'Light',
    ['Darksday'] = 'Dark'
};

local ObiTable = {
    ['Fire'] = 'Karin Obi',
    ['Earth'] = 'Dorin Obi',
    ['Water'] = 'Suirin Obi',
    ['Wind'] = 'Furin Obi',
    ['Ice'] = 'Hyorin Obi',
    ['Thunder'] = 'Rairin Obi',
    ['Light'] =         'Korin Obi',
    ['Dark'] = 'Anrin Obi'
};

function ObiCheck(spell)
    local element = spell.Element
    local zone = gData.GetEnvironment()
    
    local badEle = {
        ['Fire'] = 'Water',
        ['Earth'] = 'Wind',
        ['Water'] = 'Thunder',
        ['Wind'] = 'Ice',
        ['Ice'] = 'Fire',
        ['Thunder'] = 'Earth',
        ['Light'] = 'Dark',
        ['Dark'] = 'Light'
    };
    
    local weight = 0
    
    --Day comparison
    if (DayElementTable[zone.Day] == element) then
        weight = weight + 1
    elseif (DayElementTable[zone.Day] == badEle[element]) then
        weight = weight - 1
    end
    
    --Weather comparison
    if string.find(zone.Weather, element) then
        if string.find(zone.Weather, 'x2') then
            weight = weight + 2
        else
            weight = weight + 1
        end
    elseif string.find(zone.Weather, badEle[element]) then
        if string.find(zone.Weather, 'x2') then
            weight = weight - 2
        else
            weight = weight - 1
        end
    end    
    
    return weight
end

local SorcRing = true;
local SorcGloves = false;

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    AshitaCore:GetChatManager():QueueCommand(-1, '/lockstyleset 008');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /sorc /lac fwd sorc');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /sorcgloves /lac fwd sorcgloves');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind ` /lac fwd sorcgloves');
end

profile.OnUnload = function()
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /sorc');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /sorcgloves');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind `');
end

profile.HandleCommand = function(args)  
    if (args[1] == 'sorc') then
        if SorcRing then
            AshitaCore:GetChatManager():QueueCommand(-1, '/echo Disabling Sorcerer\'s Ring.')
        else
            AshitaCore:GetChatManager():QueueCommand(-1, '/echo Enabling Sorcerer\'s Ring.')
        end
        SorcRing = not SorcRing
    elseif (args[1] == 'sorcgloves') then
        if SorcGloves then
            AshitaCore:GetChatManager():QueueCommand(-1, '/echo Disabling Sorcerer\'s Gloves.')
        else
            AshitaCore:GetChatManager():QueueCommand(-1, '/echo Enabling Sorcerer\'s Gloves.')
        end
        SorcGloves = not SorcGloves
    end
end

profile.HandleDefault = function()
    local player = gData.GetPlayer()
    if player.Status == 'Engaged' then
        gFunc.EquipSet(sets.Idle)
    elseif player.Status == 'Resting' then
        gFunc.EquipSet(sets.Rest)
    else
        gFunc.EquipSet(sets.Idle)
    end
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    local ElementalMagicSpells = T{'Fire', 'Firaga', 'Thunder', 'Thundaga', 'Blizzard', 'Blizzaga', 'Aero', 'Aeroga', 'Stone', 'Stonega', 'Water', 'Waterga', 'Flare', 'Freeze', 'Tornado', 'Quake', 'Burst', 'Flood'}
    local player = gData.GetPlayer()
    local action = gData.GetAction()
    local baseSpellName = action.Name:match('^(%a+)')

    local spell = gData.GetAction()
    local fastCastValue = 0.21 
    local latency = 0.250 
    local minimumBuffer = 0.2
    local packetDelay = 0.25
    local castDelay = ((spell.CastTime * (1 - fastCastValue)) / 1000) + latency - minimumBuffer
    if (castDelay >= packetDelay) then
        gFunc.SetMidDelay(castDelay)
    end
    local castTimeSeconds = math.floor((spell.CastTime * (1 - fastCastValue)) / 1000)
    local castTimeDecimal = ((spell.CastTime * (1 - fastCastValue)) / 1000) % 1
    local formattedCastTime = string.format("%.2f", castTimeSeconds + castTimeDecimal)
    AshitaCore:GetChatManager():QueueCommand(8, '/echo Cast Time: ' .. formattedCastTime .. ' seconds')
    if action.Skill == 'Elemental Magic' and ElementalMagicSpells:contains(baseSpellName) then
        if (player.HPP >= 76) and SorcRing then
            gFunc.EquipSet(sets.HP_Down)
        end
    end
    gFunc.EquipSet(sets.FastCast)
end

profile.HandleMidcast = function()
    local MndDebuffs = T{ 'Slow', 'Paralyze', 'Silence'};
    local IntDebuffs = T{ 'Blind', 'Poison', 'Bind', 'Gravity', 'Dispel'};
    local ElementalDebuffs = T{ 'Burn', 'Rasp', 'Drown', 'Choke', 'Frost', 'Shock' };
    local SandI = T{'Sneak', 'Invisible'};

    local player = gData.GetPlayer();
    local action = gData.GetAction();
    local env = gData.GetEnvironment();

    if (action.Skill == 'Enfeebling Magic') then
        gFunc.Equip('main', ElementalStaffTable[action.Element]);
        if (MndDebuffs:contains(action.Name)) then
            gFunc.EquipSet(sets.EnfeebleMind);
        else
            gFunc.EquipSet(sets.Enfeeble);
        end
        if ObiCheck(action) >= 1 then
            gFunc.Equip('waist', ObiTable[action.Element])
        end
    elseif (action.Skill == 'Elemental Magic') then
        gFunc.Equip('main', ElementalStaffTable[action.Element]);
        if (ElementalDebuffs:contains(action.Name)) then
            gFunc.EquipSet(sets.ElementalDebuff);
            gFunc.Equip('Main', 'Kirin\'s Pole');
        else
            gFunc.EquipSet(sets.Nuke);
            if SorcRing then
                gFunc.Equip('Ring1', 'Sorcerer\'s Ring');
            end
            if (action.MppAftercast <= 50) then
                gFunc.Equip('neck', 'Uggalepih Pendant');
            end
            if (DayElementTable[env.Day] == action.Element) then
                gFunc.Equip('legs', 'Sorcerer\'s Tonban');
            end
            if ObiCheck(action) >= 1 then
                gFunc.Equip('waist', ObiTable[action.Element])
            end
            if SorcGloves then
                gFunc.Equip('hands', 'Sorcerer\'s Gloves');
                gFunc.Equip('Neck', 'Prudence Torque');
            end
        end
    elseif (action.Skill == 'Dark Magic') then
        gFunc.Equip('main', ElementalStaffTable[action.Element]);
        gFunc.EquipSet(sets.Dark);
        if (action.Name == 'Stun') then
            gFunc.EquipSet(sets.Dark);
            gFunc.Equip('Feet', 'Nashira Crackows');
            gFunc.Equip('Waist', 'Swift Belt');
            if ObiCheck(action) >= 1 then
                gFunc.Equip('waist', ObiTable[action.Element])
            end
        end
        if ((action.Name == 'Drain') or (action.Name == 'Aspir')) then
            gFunc.Equip('Ring2', 'Overlord\'s Ring');
            gFunc.Equip('Feet', 'Nashira Crackows');
            
            if ObiCheck(action) >= 1 then
                gFunc.Equip('waist', ObiTable[action.Element]);
                gFunc.Equip('Main', 'Diabolos\'s Pole');
            end
        end
    elseif string.match(action.Name, 'Cure') or string.match(action.Name, 'Curaga') then
        gFunc.EquipSet(sets.Bmind);
        gFunc.Equip('Main', 'Light Staff');
    elseif (action.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Bmind);

        if ((action.Name == 'Sneak') or (action.Name == 'Invisible')) then
            gFunc.Equip('Back', 'Skulker\'s cape');
        end
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
end

return profile;