local profile = {};

--MODES
local PDT_MODE = false;
local MDT_MODE = false;

local sets = {
    ['Idle'] = {
        Head = 'Dream Ribbon',
        Neck = 'Jeweled Collar +1',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Dst. Harness +1',
        Hands = 'Dst. Mittens +1',
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Ocean Sash',
        Legs = 'Dst. Subligar +1',
        Feet = 'Suzaku\'s Sune-Ate',
        Ammo = 'Happy Egg',
    }, 
    ['TP'] = {
       Head = 'Panther Mask +1',
       Neck = 'Peacock Charm',
       Ear1 = 'Brutal Earring',
       Ear2 = 'Beastly Earring',
       Body = 'Hauberk +1',
       Hands = 'Dusk Gloves',
       Ring1 = 'Rajas Ring',
       Ring2 = 'Blitz Ring',
       Back = 'Forager\'s Mantle',
       Waist = 'Sprinter\'s Belt',
       Legs = 'Byakko\'s Haidate',
       Feet = 'Dusk ledelsens',
    }, 
    ['WS'] = {
        Head = 'Wyvern Helm',
        Body = 'Kirin\'s Osode',
        Hands = 'Alkyoneus\'s Brc.',
        Ring2 = 'Flame Ring',
        Waist = 'Warwolf Belt',
        Feet = 'Hct. Leggings',
    }, 
    ['REWARD'] = {
        Ammo = 'Pet Food Zeta',
        Ear2 = 'Cmn. Earring',
        Neck = 'Promise Badge',
        Body = 'Kirin\'s Osode',
        Feet = 'Suzaku\'s Sune-Ate',
        Ring1 = 'Aqua Ring',
        Ring2 = 'Aqua Ring',
    },
    ['CALL_BEAST'] = {
        Ammo = 'S. Herbal Broth',
        Hands = 'Monster Gloves',
    },
    ['PDT'] = {
        Head = 'Darksteel Cap +1',
        Body = 'Dst. Harness +1',
        Hands = 'Dst. Mittens +1',
        Legs = 'Dst. Subligar +1',
        Feet = 'Dst. Leggings +1',
        Ring2 = 'Jelly Ring',
    },
    ['MDT'] = {
        Head = 'Coral Visor',
        Body = 'Coral Scale Mail',
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Merman\'s Ring',
        Feet = 'Coral Greaves',
        Back = 'Resentment Cape',
    },
    ['HASTE'] = {
        Head = 'Panther Mask +1',
        Hands = 'Dusk Gloves',
        Ring2 = 'Blitz Ring',
        Waist = 'Sprinter\'s Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Dusk ledelsens',
    },
    ['CHARM'] = {
        Head = 'Panther Mask +1',
        Body = 'Kirin\'s Osode',
    },
    ['RESTING'] = {}, --If you want this
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /pdt /lac fwd pdt');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias /mdt /lac fwd mdt');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind = /lac fwd mdt');
    AshitaCore:GetChatManager():QueueCommand(-1, '/bind ` /lac fwd pdt');
    AshitaCore:GetChatManager():QueueCommand(-1, '/macro book 14');
    AshitaCore:GetChatManager():QueueCommand(-1, '/macro set 9');
    AshitaCore:GetChatManager():QueueCommand(-1, '/lockstyleset 09');
end

profile.OnUnload = function()
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /pdt');
    AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /mdt');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind `');
    AshitaCore:GetChatManager():QueueCommand(-1, '/unbind =');
end

profile.HandleCommand = function(args)
    local cmd = args[1];
    
    if cmd == 'pdt' then
        PDT_MODE = not PDT_MODE
        AshitaCore:GetChatManager():QueueCommand(-1, string.format('/echo PDT: %s', PDT_MODE and 'ON' or 'OFF'))

    elseif cmd == 'mdt' then
        MDT_MODE = not MDT_MODE
        AshitaCore:GetChatManager():QueueCommand(-1, string.format('/echo MDT: %s', MDT_MODE and 'ON' or 'OFF'))
    end
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();

    --DEFAULT
    gFunc.EquipSet(sets.Idle);

    --ENGAGE/RESTING
    if player.Status == 'Engaged' then
        if player.SubJob == 'THF' then
            gFunc.EquipSet(sets.TP);
            gFunc.Equip('Ammo', 'Tiphia Sting');
        else
            gFunc.EquipSet(sets.TP);
            gFunc.Equip('Ammo', 'Virtue Stone');
        end
    elseif player.Status == 'Resting' then
        gFunc.EquipSet(sets.Resting)
    end

    --DEFENSIVE
    if PDT_MODE then
        gFunc.EquipSet(sets.PDT);
    elseif MDT_MODE then
        gFunc.EquipSet(sets.MDT);
    end
end

profile.HandleAbility = function()
    local action = gData.GetAction();

    if (action.Name == 'Charm') then
        gFunc.EquipSet(sets.CHARM);
    end

    if (action.Name == 'Call Beast') then
        gFunc.EquipSet(sets.CALL_BEAST);
    end

    if (action.Name == 'Reward') then
        gFunc.EquipSet(sets.REWARD);
    end
end

profile.HandleMidcast = function()
    local action = gData.GetAction();

    --Utsusemi
    if (action.Skill == 'Ninjutsu') then
        gFunc.EquipSet(sets.HASTE);
    end
end

profile.HandleWeaponskill = function()
    local action = gData.GetAction();
    if (action.ActionType == 'Weaponskill') then
        gFunc.EquipSet(sets.WS);
    end
end

return profile;