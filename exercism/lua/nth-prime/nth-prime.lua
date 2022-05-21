local function is_prime(num)
  for i = 2, num ^ (1 / 2) do
    if num % i == 0 then
      return false
    end
  end
  return true
end

return function(n)
  assert(n > 0)
  local counter = 1
  local i = 2
  while true do
    if is_prime(i) then
      if counter == n then
        return i
      end
      counter = counter + 1
    end

    i = i + 1
  end
  return i
end
