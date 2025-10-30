local profile = {};
local sets = {
    ['Idle'] = {
        Main = 'Terra\'s Staff',
        Ammo = 'Hedgehog Bomb',
        --Head = 'Genie Tiara',
        Head = 'Dream Ribbon',
        Neck = 'Jeweled Collar +1',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Ethereal Earring',
        Body = 'Sorcerer\'s Coat',
        Hands = 'Src. Gloves +1',
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Umbra Cape',
        Waist = 'Hierarch Belt',
        Legs = 'Src. Tonban +1',
        Feet = 'Src. Sabots +1',
    },
    ['mdt'] = {
        Main = 'Terra\'s Staff',
        Ammo = 'Hedgehog Bomb',
        Head = 'Dream Ribbon',
        Neck = 'Jeweled Collar +1',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Sorcerer\'s Coat',
        Hands = 'Merman\'s Bangles',
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Hexerei Cape',
        Waist = 'Hierarch Belt',
        Legs = 'Src. Tonban +1',
        Feet = 'Src. Sabots +1',
    },
    ['Nuke'] = {
        Ammo = 'Phtm. Tathlum',
        --Head = 'Sorcerer\'s Petas.',
        Head = 'Wzd. Petasos +1',
        --Neck = 'Elemental Torque',
        Neck = 'Prudence Torque',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Novio Earring',
        Body = 'Igqira Weskit',
        Hands = 'Zenith Mitts',
        Ring1 = 'Snow Ring',
        Ring2 = 'Snow Ring',
        Legs = 'Mahatma Slops', 
        Feet = 'Src. Sabots +1', 
        Back = 'Prism Cape',
        Waist = 'Sorcerer\'s Belt',
    },
    ['eDown'] = {
        Ammo = 'Hedgehog Bomb',
        Head = 'Wzd. Petasos +1',
        Neck = 'Prudence Torque',
        Ear1 = 'Novia Earring',
        Ear2 = 'Novio Earring',
        Body = 'Mahatma Hpl.',
        Hands = 'Wzd. Gloves +1',
        Ring1 = 'Snow Ring',
        Ring2 = 'Snow Ring',
        Legs = 'Mahatma Slops', 
        Feet = 'Src. Sabots +1', 
        Back = 'Prism Cape',
        Waist = 'Penitent\'s Rope',
    },
    ['HP_Down'] = {
        Ammo = 'Tiphia Sting',
        Head = 'Zenith Crown', --50
        Neck = 'Checkered Scarf', --12
        Hands = 'Zenith Mitts', --50
        Ring1 = 'Serket Ring', -- 50
        Ring2 = 'Ether Ring', --40
        Waist = 'Penitent\'s Rope', --30
        Legs = 'Zenith Slacks', --50
        Feet = 'Rostrum Pumps', --30
    },
    ['Rest'] = {
        Main = 'Pluto\'s Staff',
        Head = 'Wzd. Petasos +1',
        Neck = 'Checkered Scarf',
        Ear1 = 'Warlock\'s Earring',
        Ear2 = 'Relaxing Earring',
        Body = 'Mahatma Hpl.',
        Hands = 'Src. Gloves +1',
        Ring1 = 'Serket Ring',
        Ring2 = 'Ether Ring',
        Waist = 'Hierarch Belt',
        Legs = 'Baron\'s Slops',
        Feet = 'Mahatma Pigaches',
    },
    ['Enfeeble'] = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Genie Tiara',
        Neck = 'Enfeebling Torque',
        Ear1 = 'Morion Earring +1',
        Ear2 = 'Morion Earring +1',
        Body = 'Wzd. Coat +1',
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
        Ear2 = 'Morion Earring +1',
        Body = 'Nashira Manteel',
        Hands = 'Src. Gloves +1',
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
        Ear2 = 'Cmn. Earring',
        Neck = 'Promise Badge',
        Body = 'Mahatma Hpl.',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Aqua Ring',
        Ring2 = 'Aqua Ring',
        Back = 'Prism Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Mahatma Slops',
        Feet = 'Mahatma Pigaches',
    },
    ['EnfeebleMind'] = {
        Ammo = 'Phtm. Tathlum',
        Head = 'Genie Tiara',
        Neck = 'Enfeebling Torque',
        Ear1 = 'Geist Earring',
        Ear2 = 'Geist Earring',
        Body = 'Wzd. Coat +1',
        Hands = 'Devotee\'s Mitts',
        Ring1 = 'Aqua Ring',
        Ring2 = 'Aqua Ring',
        Back = 'Prism Cape',
        Waist = 'Penitent\'s Rope',
        Legs = 'Nashira Seraweels',
        Feet = 'Mahatma Pigaches',
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
        Ear2 = 'Morion Earring +1',
        Body = 'Mahatma Hpl.',
        Hands = 'Wzd. Gloves +1',
        Ring1 = 'Snow Ring',
        Ring2 = 'Snow Ring',
        Back = 'Prism Cape',
        Waist = 'Sorcerer\'s Belt',
        Legs = 'Mahatma Slops',
        Feet = 'Src. Sabots +1',
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
    ['Fire'] = 'Vulcan\'s Staff',
    ['Earth'] = 'Terra\'s Staff',
    ['Water'] = 'Neptune\'s Staff',
    ['Wind'] = 'Auster\'s Staff',
    ['Ice'] = 'Aquilo\'s Staff',
    ['Thunder'] = 'Jupiter\'s Staff',
    ['Light'] = 'Apollo\'s Staff',
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
    ['Light'] = 'Korin Obi',
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
local enimityDown = false;
local SorcGloves = false;
local mdt = false

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    AshitaCore:GetChatManager():QueueCommand(-1, '/lockstyleset 008');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /sorc /lac fwd sorc');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /sorcgloves /lac fwd sorcgloves');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /enimitydown /lac fwd enimitydown');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /mdt /lac fwd mdt');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind ` /lac fwd sorcgloves');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind \\ /lac fwd enimitydown');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind = /lac fwd mdt');
    AshitaCore:GetChatManager():QueueCommand(-1, '/macro book 09');
    AshitaCore:GetChatManager():QueueCommand(-1, '/macro set 1');
    AshitaCore:GetChatManager():QueueCommand(-1, '/lockstyleset 08');
end

profile.OnUnload = function()
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /sorc');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /sorcgloves');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /enimitydown');
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
            AshitaCore:GetChatManager():QueueCommand(-1, '/echo Disabling Src. Gloves +1.')
        else
            AshitaCore:GetChatManager():QueueCommand(-1, '/echo Enabling Src. Gloves +1.')
        end
        SorcGloves = not SorcGloves

    elseif (args[1] == 'enimitydown') then
        if enimityDown then
            AshitaCore:GetChatManager():QueueCommand(-1, '/echo Disabling Enimity Down')
        else
            AshitaCore:GetChatManager():QueueCommand(-1, '/echo Enabling Enimity Down')  
        end
        enimityDown = not enimityDown
    
    elseif (args[1] == 'mdt') then
        if mdt then
            AshitaCore:GetChatManager():QueueCommand(-1, '/echo Disabling MDT')
        else
            AshitaCore:GetChatManager():QueueCommand(-1, '/echo Enabling MDT')  
        end
        mdt = not mdt
    end
end

profile.HandleDefault = function()
    local player = gData.GetPlayer()
    if player.Status == 'Engaged' then
        gFunc.EquipSet(sets.Idle)
    elseif player.Status == 'Resting' then
        gFunc.EquipSet(sets.Rest)
    else
        if (mdt) then
            gFunc.EquipSet(sets.mdt)
        else
            gFunc.EquipSet(sets.Idle)
        end
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

            if enimityDown then
                gFunc.EquipSet(sets.eDown)
            else
                gFunc.EquipSet(sets.Nuke);
            end

            if SorcRing then
                gFunc.Equip('Ring1', 'Sorcerer\'s Ring');
            end

            if (action.MppAftercast <= 50) then
                gFunc.Equip('neck', 'Uggalepih Pendant');
            end

            if (DayElementTable[env.Day] == action.Element) then
                gFunc.Equip('legs', 'Src. Tonban +1');
            end

            if ObiCheck(action) >= 1 then
                gFunc.Equip('waist', ObiTable[action.Element])
            end

            if SorcGloves then
                gFunc.Equip('hands', 'Src. Gloves +1');
                gFunc.Equip('Neck', 'Prudence Torque');
            end
        end

    elseif (action.Skill == 'Dark Magic') then
        gFunc.Equip('main', ElementalStaffTable[action.Element]);
        gFunc.EquipSet(sets.Dark);

        if (action.Name == 'Stun') then
            gFunc.Equip('Main', 'Jupiter\'s Staff');
            gFunc.Equip('Head', 'Nashira Turban');
            gFunc.Equip('Body', 'Nashira Manteel');
            gFunc.Equip('Hands', 'Nashira Gages');
            gFunc.Equip('Legs', 'Nashira Seraweels');
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
        gFunc.Equip('Main', 'Apollo\'s Staff');
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