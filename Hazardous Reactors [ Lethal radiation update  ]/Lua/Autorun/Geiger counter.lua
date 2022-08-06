local geigerRadsIndex = {}

Hook.Add("geigercount", "geigereffect", function (effect, deltaTime, item, targets, worldPosition)
  if targets[1] == nil then return end
  if geigerRadsIndex[item] == nil then geigerRadsIndex[item] = 0 end

  local c = targets[1]
  local r = c.CharacterHealth.GetAffliction("radiationgeiger")
  local rads = 0
  if(r) then
    rads = r.Strength
  end

  local deltaRads = math.max(rads - geigerRadsIndex[item], 0)
  item.condition = 100 - (deltaRads * 10)
  geigerRadsIndex[item] = rads

end)
