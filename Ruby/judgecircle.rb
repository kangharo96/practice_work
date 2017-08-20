# @param {String} moves
# @return {Boolean}
def judge_circle(moves)
	# First attempt at solving question from LeetCode, obsolete
	x = y = 0
 	moves.each_char { |move|
		x += 1 if move.eql?("U")
		x -= 1 if move.eql?("D")
		y += 1 if move.eql?("R")
		y -= 1 if move.eql?("L")
 	}
    
	return x == 0 && y == 0
	# Shortest run-time answer for Ruby
	# return moves.count("U") == moves.count("D") && moves.count("R") == moves.count("L")
end
