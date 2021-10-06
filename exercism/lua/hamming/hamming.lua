local Hamming = {}

function Hamming.compute(a, b)
	if #a ~= #b then
		return -1
	end

	local hamming_distance = 0
	local size = #a
	for i = 1, size do
		if a:sub(i, i) ~= b:sub(i, i) then
			hamming_distance = hamming_distance + 1
		end
	end
	return hamming_distance
end

return Hamming
