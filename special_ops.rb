# & is the bitwise and operation. It operates on numbers in their binary representation.
# It takes a pair of bits at a given position in the input numbers and
# puts a 1 in that position in the output if they are both 1s. Otherwise
# it puts a 0.
def bitwise_and(x, y)
  ans = x & y
  # rjust(5) pads the string with spaces (on the left) up to a length of 5
  puts x.to_s.rjust(5) + ' = ' + x.to_s(2).rjust(8, '0')
  puts y.to_s.rjust(5) + ' = ' + y.to_s(2).rjust(8, '0')
  puts (x.to_s + '&' + y.to_s).rjust(5) + ' = ' + ans.to_s(2).rjust(8, '0') + ' = ' + ans.to_s
end

# ^ is the bitwise xor operation. It operates on numbers in their binary representation.
# It takes a pair of bits at a given position in the input numbers and
# puts a 1 in that position in the output if exactly one is a 1. Otherwise
# it puts a 0.
def bitwise_xor(x, y)
  ans = x ^ y
  # rjust(5) pads the string with spaces (on the left) up to a length of 5
  puts x.to_s.rjust(5) + ' = ' + x.to_s(2).rjust(8, '0')
  puts y.to_s.rjust(5) + ' = ' + y.to_s(2).rjust(8, '0')
  puts (x.to_s + '^' + y.to_s).rjust(5) + ' = ' + ans.to_s(2).rjust(8, '0') + ' = ' + ans.to_s
end
