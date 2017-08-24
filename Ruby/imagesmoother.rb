# @param {Integer[][]} m
# @return {Integer[][]}
def image_smoother(m)
	# Base case if 'm' was an array of length and width of 1
	return m if m.length == 1 and m[0].length == 1
	# Clones 'm'
	copy = m.clone

	# saves 'm'.size - 1 to memory and save time accessing
	width = m.size - 1
	m.each_index { |row|
		# Clones 'm'[row] into 'copy'[row] to prevent any changes to 'copy'
		# from going to 'm'
		copy[row] = m[row].clone
		# saves 'm'[row].size -1 to memory and save time accessing
		length = m[row].size - 1
		m[row].each_index { |col|
			# 'count' (or available pixels) will always start at 1
			# 'sum' will always have the value at 'm'[row][col]
			count, sum = 1, m[row][col]

			# checks if 'col' < 'length', which adds neighboring 'pixel' to the
			# right of 'm'[row][col]
			if col < length then
				count += 1
				sum += m[row][col + 1]
			end

			# checks if 'col' != 0, which adds neighboring 'pixel' to the left
			# of 'm'[row][col]
			if col != 0 then
				count += 1
				sum += m[row][col - 1]
			end

			# checks if 'row' != 0, which adds neighboring 'pixel' above
			# 'm'[row][col]
			if row != 0 then
				count += 1
				sum += m[row - 1][col]
			end

			# checks if 'row' != 'width', which adds neighboring 'pixel' below
			# 'm'[row][col]
			if row != width then
				count += 1
				sum += m[row + 1][col]
			end

			# checks if 'row' != 0 and 'col' != 0, which adds neighboring
			# 'pixel' above and to the left of 'm'[row][col]
			if row != 0 and col != 0 then
				count += 1
				sum += m[row - 1][col - 1]
			end

			# checks if 'row' != 0 and 'col' != 'length', which adds neighboring
			# 'pixel' above and to the left of 'm'[row][col]
			if row != 0 and col != length then
				count += 1
				sum += m[row - 1][col + 1]
			end

			# checks if 'row' != 'width' and 'col' != 0, which adds neighboring
			# 'pixel' above and to the left of 'm'[row][col]
			if row != width and col != 0 then
				count += 1
				sum += m[row + 1][col - 1]
			end

			# checks if 'row' != 'width' and 'col' != 'length', which adds
			# neighboring 'pixel' above and to the left of 'm'[row][col]
			if row != width and col != length then
				count += 1
				sum += m[row + 1][col + 1]
			end

			# saves the biggest, whole integer less than 'sum / count'
			# equivalent to sum.fdiv(count).floor
			copy[row][col] = sum / count
		}
	}

	return copy
end
