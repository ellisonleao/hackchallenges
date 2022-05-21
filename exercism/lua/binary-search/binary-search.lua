return function(array, target)
  local left = 1
  local right = #array
  while left <= right do
    local mean = math.floor((left + right) / 2)
    if array[mean] == target then
      return mean
    elseif array[mean] < target then
      left = mean + 1
    else
      right = mean - 1
    end
  end
  return -1
end
