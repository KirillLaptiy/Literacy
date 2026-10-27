function literacylevelTraits(player, perk, perkLevel, addBuffer)

	literacyLevelAddRemPerks(player, perk, perkLevel);
	
 end
 
Events.LevelPerk.Add(literacylevelTraits);

function literacyLevelAddRemPerks(player, perk, perkLevel)

	if perk == Perks.Reading then

		if (perkLevel == 4 or perkLevel == 6) and player:HasTrait("SlowReader") then
			player:getTraits():remove("SlowReader")
			player:Say(getText("IGUI_Remove_SlowReader"))

		elseif perkLevel == 5 and player:HasTrait("VerySlowReader") then
			player:getTraits():remove("VerySlowReader")
			player:getTraits():add("SlowReader")
			player:Say(getText("IGUI_Remove_VerySlowReader"))

		elseif perkLevel == 6 and player:HasTrait("PoorReader") then
			player:getTraits():remove("PoorReader")
			player:Say(getText("IGUI_Remove_PoorReader"))
		end


		if (perkLevel == 3 or perkLevel == 5 or perkLevel == 8) and not player:HasTrait("VerySlowReader") and not player:HasTrait("FastReader") and not player:HasTrait("SlowReader") then
			player:getTraits():add("FastReader")
			player:Say(getText("IGUI_Add_FastReader"))

		elseif (perkLevel == 4 or perkLevel == 8) and not player:HasTrait("PoorReader") and not player:HasTrait("KeenReader") then
			player:getTraits():add("KeenReader")
			player:Say(getText("IGUI_Add_KeenReader"))
		end	
	end				
end