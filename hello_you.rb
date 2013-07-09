# print is like puts, except it doesn't start a new line after printing
print "Enter your name: "
# gets stands for "get string". It waits for the user to enter some text and hit Enter.
name = gets
# chomp is a method that will remove any newline characters from the end of our string 
name = name.chomp

puts "Hello #{name}"


