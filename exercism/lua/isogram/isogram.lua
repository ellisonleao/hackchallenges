return function(s)
  local letters = {}
  s:gsub(".", function(i)
    i = string.lower(i)
    if i == " " or i == "-" then
      return
    end
    if letters[i] == nil then
      letters[i] = 1
    else
      letters[i] = letters[i] + 1
    end
  end)

  for _, val in pairs(letters) do
    if val > 1 then
      return false
    end
  end
  return true
end
