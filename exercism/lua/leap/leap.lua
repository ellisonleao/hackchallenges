return function(number)
  if number % 4 == 0 and number % 100 ~= 0 then
    return true
  elseif number % 400 == 0 then
    return true
  end
  return false
end
