
LiteracyTraits = {}

LiteracyTraits.DoTraits = function()

	local FastReader = TraitFactory.getTrait("FastReader")
    FastReader:addXPBoost(Perks.Reading, 1)
    local SlowReader = TraitFactory.getTrait("SlowReader")
    SlowReader:addXPBoost(Perks.Reading, -1)
    local Illiterate = TraitFactory.getTrait("Illiterate")
    Illiterate:addXPBoost(Perks.Reading, -5)

	local PoorReader = TraitFactory.addTrait("PoorReader", getText("UI_trait_PoorReader"), -3, getText("UI_trait_PoorReaderdesc"), false);
    local KeenReader = TraitFactory.addTrait("KeenReader", getText("UI_trait_KeenReader"), 4, getText("UI_trait_KeenReaderdesc"), false);
    local VerySlowReader = TraitFactory.addTrait("VerySlowReader", getText("UI_trait_VerySlowReader"), -3, getText("UI_trait_VerySlowReaderdesc"), false);
    VerySlowReader:addXPBoost(Perks.Reading, -2)


	TraitFactory.setMutualExclusive("PoorReader", "KeenReader");
    TraitFactory.setMutualExclusive("PoorReader", "Illiterate");
    TraitFactory.setMutualExclusive("KeenReader", "Illiterate");

    TraitFactory.setMutualExclusive("VerySlowReader", "SlowReader");
    TraitFactory.setMutualExclusive("VerySlowReader", "FastReader");
    TraitFactory.setMutualExclusive("VerySlowReader", "Illiterate");
	
    local traitList = TraitFactory.getTraits()
    for i = 1, traitList:size() do
        local trait = traitList:get(i - 1)
        BaseGameCharacterDetails.SetTraitDescription(trait)
    end	
	
end

Events.OnGameBoot.Add(LiteracyTraits.DoTraits);