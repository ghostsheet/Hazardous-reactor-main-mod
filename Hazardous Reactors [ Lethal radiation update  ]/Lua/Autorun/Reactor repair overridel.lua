Hook.Add("roundStart", "changeRepairThingyOfReactors", function()
    for k, v in pairs(Item.ItemList) do
       local repairable = v.GetComponentString("Repairable")
       if repairable and v.Submarine == Submarine.MainSub and  v.GetComponentString("Reactor") then
          repairable.RepairThreshold = 80
          repairable.MinDeteriorationCondition = 0
		  repairable.FixDurationLowSkill = 60
		  repairable.FixDurationHighSkill = 30
		  repairable.MinDeteriorationDelay = 120
		  repairable.MinDeteriorationDelay = 240
		  
       end
    end
end)