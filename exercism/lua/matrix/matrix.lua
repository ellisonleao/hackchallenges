return function(s)
	local matrix = {}
	for line in s:gmatch("([^\n]+)") do
		local row = {}
		for item in line:gmatch("[%d]+") do
			table.insert(row, tonumber(item))
		end
		table.insert(matrix, row)
	end

	return {
		row = function(n)
			return matrix[n]
		end,
		column = function(n)
			local c = {}
			for _, row in pairs(matrix) do
				table.insert(c, row[n])
			end
			return c
		end,
	}
end
