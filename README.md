# FFXI_XML_LUA_Scripts -- Updated Last: 3/2024
This section includes XML scripts for LegacyAC for the game FFXI.
Note: These XMLs do work on HorizonXI.

In order to use these scripts first save the file as YourCharacterName_XML and add a folder called "LegacyAC" in the directory: HorizonXI/Game/Config/LegacyAC, place all XML files in this folder. 


**Drg XML Includes:**

    -Auto sets macrobook depending on sub and lockstyle

    -TP swap on engaging, has two sets that it will swap to that is dependent on your sub job being WHM or SAM

    -Idle swap on unengagement

    -Player Max HP swap on Dia cast when sub is WHM|RDM|BLU|BLM

    -Wyvern Max HP swap on Healing Breath cast

    -Jump Swaps on use

    -Wyrm body swap on call wyvern

    -WS swap on use, has section for single hit WS's and Multi hit WS's 

    

**PLD XML Includes(Shoutout to Rival for doing the heavy lifting on this one):**

    -Commands: /pdt, /mdt, /fight, /kite, /fire, /ice, /earth, /idle, /town, /ref, /cheat3, /cheat4, /ichi, /bowe
    
    -Auto sets macrobook depending on sub and lockstyle
  
    -Swap on ability use: Rampart, Sentinel
  
    -TP/idle swap on engagement and unengagement

    -fight command for TP set, ref for vermy for idle refresh

    -Cure cheat for both Cure 3 and 4 utilizing sets "PrecheatIII" and "PreCheatIV"

    -Enimity swap on flash/provoke/cure etc.

**BLM LUA Includes:**

    -Commands: /sorc to toggle sorc ring proc, and a keybind on ` to toggle dark gloves for MB.
  
    -Sets: Idle / Rest / Enfeeble / Enfeeble Mind / Elemental debuff / Fast cast / Nuke / Dark / HP down / Stoneskin
  
    -Logic for Elemental staves, obi's, uggy pendant, sorc legs, diabolos' pole, hp cut over %
    

**BRD LUA Includes:**

    -Idle / Resting / CHR / String / Wind / Convert / Stoneskin / Cure / Utsu / Precast sets
  
    -Instrument swapping based on song
  
    -Start / Midcast set swapping
  
    -Haste swapping for utsu

**BST LUA Includes:**

    -Commands: /pdt to toggle pdt set, /mdt to toggle mdt set
    
    -Sets: Idle / rest / charm / reward / pdt / mdt / call beast / tp / weapon skill 
    
    -Haste swapping for utsu
    
    -Dynamic ammo slot based on sub job at the time of engagement 
