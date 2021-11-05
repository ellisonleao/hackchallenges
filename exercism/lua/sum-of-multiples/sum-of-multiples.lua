return function(divisors)
  return {
    to = function(limit)
      local sum = 0
      for i = 1, limit - 1 do
        for _, divisor in ipairs(divisors) do
          if i ~= 0 and i % divisor == 0 then
            sum = sum + i
            break
          end
        end
      end
      return sum
    end,
  }
end
