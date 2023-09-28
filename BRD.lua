local profile = {};
profile.Sets = {
    ['Idle'] = {
        Main = 'Earth Staff',
        Range = 'Horn +1',
        Head = 'Genbu\'s Kabuto',
        Neck = 'Shield Pendant',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Custom Tunic',
        Hands = 'Seiryu\'s Kote',
        Ring1 = 'Ether Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Gigant Mantle',
        Waist = 'Powerful Rope',
        Legs = 'Mahatma Slops',
        Feet = 'Suzaku\'s Sune-Ate',
    },

    ['CHR'] = {
        Main = 'Apollo\'s Staff',
        Head = 'Noble\'s Ribbon',
        Neck = 'Flower Necklace',
        Ear1 = 'Melody Earring +1',
        Ear2 = 'Beastly Earring',
        Body = 'Errant Hpl.',
        Hands = 'Choral Cuffs',
        Ring1 = 'Angel\'s Ring',
        Ring2 = 'Angel\'s Ring',
        Back = 'Jester\'s Cape +1',
        Waist = 'Gleeman\'s Belt',
        Legs = 'Mahatma Slops',
        Feet = 'Sha\'ir Crackows',
    },

    ['Wind'] = { 
        Head = 'Demon Helm',
        Neck = 'Wind Torque',
        Body = 'Minstrel\'s Coat',
        Hands = 'Choral Cuffs',
        Legs = 'Choral Cannions',
    },

    ['String'] = { 
        Head = 'Demon Helm',
        Neck = 'String Torque',
        Body = 'Minstrel\'s Coat',
        Hands = 'Choral Cuffs',
    },

    ['PreCast'] = {
        Ring1 = 'Minstrel\'s Ring',
        Feet = 'Rostrum Pumps',
    },

    ['Utsu'] = {
        Hands = 'Dusk Gloves',
        Waist = 'Swift Belt'
    },

    ['Resting'] = {
        Main = 'Dark Staff',
        Neck = 'Checkered Scarf',
        Body = 'Errant Hpl.',
    },

    ['Cure'] = {
        Main = 'Apollo\'s Staff',
        Neck = 'Justice Badge',
        Body = 'Errant Hpl.',
        Ring1 = 'Tranquility Ring',
        Ring2 = 'Tranquility Ring',
        Back = 'Rainbow Cape',
        Legs = 'Mahatma Slops',
        Feet = "Suzaku\'s Sune-Ate",
    },

	['Stoneskin'] = {
        Main = 'Apollo\'s Staff',
        Neck = 'Justice Badge',
        Body = 'Errant Hpl.',
        Ring1 = 'Tranquility Ring',
        Ring2 = 'Tranquility Ring',
        Back = 'Rainbow Cape',
        Legs = 'Mahatma Slops',
        Feet = "Suzaku\'s Sune-Ate",
    },

    ['MP'] = {
        Head = 'Zenith Crown',
        Neck = 'Wind Torque',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Errant Hpl.',
        Hands = 'Fisherman\'s Gloves',
        Ring1 = 'Merman\'s Ring',
        Ring2 = 'Ether Ring',
        Back = 'Gigant Mantle',
        Waist = 'Powerful Rope',
        Legs = 'Zenith Slacks',
        Feet = 'Rostrum Pumps',
    },

    ['Convert'] = {
        Head = 'Zenith Crown',
        Neck = 'Flower Necklace',
        Ear1 = 'Melody Earring +1',
        Ear2 = 'Beastly Earring',
        Body = 'Errant Hpl.',
        Hands = 'Fisherman\'s Gloves',
        Ring1 = 'Angel\'s Ring',
        Ring2 = 'Ether Ring',
        Back = 'Jester\'s Cape +1',
        Waist = 'Gleeman\'s Belt',
        Legs = 'Zenith Slacks',
        Feet = 'Rostrum Pumps',
    }
};

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
end

profile.OnUnload = function()
end

profile.HandleCommand = function()
end

profile.HandleDefault = function() ---Engagement / Rest / Idle handling
    local player = gData.GetPlayer();

    if (player.Status == 'Engaged') then
		gFunc.EquipSet(profile.Sets.TP);
	 elseif (player.Status == 'Resting') then
        gFunc.EquipSet(profile.Sets.Resting);
	else 
		gFunc.EquipSet(profile.Sets.Idle);	
	end
end
 
profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function() ---PreCast Param handling
    local action = gData.GetAction(); 
    if(action.Skill == 'Singing') then
        gFunc.EquipSet(profile.Sets.PreCast);
		gFunc.Equip('Ring1', 'Minstrel\'s Ring');
        gFunc.Equip('Waist', 'Powerful Rope');
        gFunc.Equip('Feet', 'Rostrum Pumps');
        gFunc.Equip('Ring2', 'Bomb Queen Ring');
    end
end

profile.HandleMidcast = function() ---Song sets / override handling
    local action = gData.GetAction();
    if(action.Skill == 'Singing') then
        if(string.contains(action.Name, 'Lullaby')) then
            gFunc.EquipSet(profile.Sets.CHR);
            gFunc.Equip('Main', 'Apollo\'s Staff');
            gFunc.Equip('Neck', 'String Torque')
            gFunc.Equip('Range', "NurseMaid\'s Harp");

        elseif (string.contains(action.Name, 'March')) then
            gFunc.EquipSet(profile.Sets.Wind);
            gFunc.Equip('Range', 'Faerie Piccolo');

        elseif (string.contains(action.Name, 'Requiem')) then
            gFunc.EquipSet(profile.Sets.CHR);
            gFunc.Equip('Main', 'Apollo\'s Staff');
            gFunc.Equip('Neck', 'Wind Torque');
            gFunc.Equip('Range', 'Flute +1');

        elseif (string.contains(action.Name, 'Elegy')) then
            gFunc.EquipSet(profile.Sets.CHR);
            gFunc.Equip('Neck', 'Wind Torque')
            gFunc.Equip('Range', 'Horn +1');

        elseif (string.contains(action.Name, 'Minuet')) then
            gFunc.EquipSet(profile.Sets.Wind);
            gFunc.Equip('Range', 'Cornette +1');
        
        elseif (string.contains(action.Name, 'Threnody')) then
            gFunc.EquipSet(profile.Sets.CHR);
            gFunc.Equip('Neck', 'String Torque')
            gFunc.Equip('Range', 'Sorrowful Harp');

		elseif(string.contains(action.Name, 'Carol')) then
            gFunc.EquipSet(profile.Sets.Wind);

		elseif(string.contains(action.Name, 'Chocobo Mazurka')) then
            gFunc.EquipSet(profile.Sets.Wind);

		elseif(string.contains(action.Name, 'Madrigal')) then
            gFunc.EquipSet(profile.Sets.Wind);
            gFunc.Equip('Range', 'Traversiere +1');

		elseif(string.contains(action.Name, 'Ballad')) then
            gFunc.EquipSet(profile.Sets.Wind);

		else
			gFunc.EquipSet(profile.Sets.CHR);  
        end

	elseif (string.contains(action.Name, 'Cure') or string.contains(action.Name, 'Curaga'))then ---Cure / Enhancement / Ninjitsu handling
		gFunc.EquipSet(profile.Sets.Cure);
    elseif (action.Skill == 'Enhancing Magic') then
		gFunc.EquipSet(profile.Sets.Stoneskin);
    elseif (action.Skill == 'Ninjutsu') then
        gFunc.EquipSet(profile.Sets.Utsu);		
	end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
end

return profile;