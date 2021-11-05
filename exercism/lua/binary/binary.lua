local function to_decimal(input)
  local output = 0
  for i = 1, #input do
    local char = input:sub(i, i)
    if char ~= "0" and char ~= "1" then
      return 0
    end
    local decimal = tonumber(char)
    output = output + decimal * math.pow(2, #input - i)
  end
  return output
end

return {
  to_decimal = to_decimal,
}
