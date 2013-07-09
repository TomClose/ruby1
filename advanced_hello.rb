# Two examples of how this program should work:

# What is your name? tom
# What is your home town? oxford
# What country is that in? uk 
# Hello Tom! You are from Oxford, UK.

# What is your name? boRIS
# What is your home town? Minsk
# What country is that in? Belarus
# Hello Boris! Your are from Minsk, BELARUS.


# Get their name
print "What is your name? "
name = gets.chomp

# Get their home town
print "What is your home town? "
town = gets.chomp

# Get thier country
print "What country is that in"
country = gets.chomp

# Say hello
puts "Hello #{name.capitalize}! You are from #{town.capitalize}, #{country.upcase}."

# Note that you don't need name.downcase.capitalize, as capitalize does this anyway!