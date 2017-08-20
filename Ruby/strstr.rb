# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
	# First attempt at making a one-liner implementation for an algorithm's question from LeetCode
	haystack.include?(needle) ? haystack.index(needle) : -1
	# Shortest run-time answer in Ruby
	# ind = haystack.index(needle)
	# ind ? ind : -1
end
