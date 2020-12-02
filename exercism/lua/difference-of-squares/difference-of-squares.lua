local function square_of_sum(n)
  local total = 0
  for i=1, n do
    total = total + i
  end
  return math.pow(total, 2)
end

local function sum_of_squares(n)
  local total = 0
  for i=1, n do
    total = total + math.pow(i, 2)
  end
  return total
end

local function difference_of_squares(n)
  return square_of_sum(n) - sum_of_squares(n)
end

return {
  square_of_sum = square_of_sum,
  sum_of_squares = sum_of_squares,
  difference_of_squares = difference_of_squares
}
