
local function YummyAdjust(Name, Property, Value)
    local Item = ScriptManager.instance:getItem(Name)
     Item:DoParam(Property.." = "..Value)
     end

       YummyAdjust("Base.Book","XPReward","90")
       YummyAdjust("Base.Magazine","XPReward","32")
       YummyAdjust("Base.TVMagazine","XPReward","32")
       YummyAdjust("Base.HottieZ","XPReward","32")
       YummyAdjust("Base.ComicBook","XPReward","32")
       YummyAdjust("Base.Newspaper","XPReward","40")
       YummyAdjust("Base.MagazineCrossword1","XPReward","32")
       YummyAdjust("Base.MagazineCrossword2","XPReward","32")
       YummyAdjust("Base.MagazineCrossword3","XPReward","32")
       YummyAdjust("Base.MagazineWordsearch1","XPReward","32")
       YummyAdjust("Base.MagazineWordsearch1","XPReward","32")
       YummyAdjust("Base.MagazineWordsearch1","XPReward","32")