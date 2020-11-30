require_relative 'special_ops'

print 'Enter your first integer: '
n1 = gets.chomp.to_i

print 'Enter your second integer: '
n2 = gets.chomp.to_i

bitwise_and(n1, n2)

puts ''

bitwise_xor(n1, n2)

puts ''
