# Load in standard test frameworks
require 'minitest/spec'
require 'minitest/autorun'

# Try to load processpilot. Tell user to install if they don't have it.
begin
  require 'processpilot/processpilot'
rescue LoadError
  error_string = <<~EOF
         Oh dear .. it didn't work. To run tests you must install ProcessPilot:
    #{'     '}
         	gem install ProcessPilot
    #{'     '}
  EOF
  puts error_string
  exit
end

# The actual test
describe 'divide_cake' do
  it 'works for 11 and 3' do
    ProcessPilot.pilot('divide_cake.rb', force_ruby_process_sync: true) do |stdin, stdout|
      stdout.readpartial(100) # => How many pieces of cake do you have? 11
      stdin.write("11\n")
      stdout.readpartial(100) # => How many people want some cake? 3
      stdin.write("3\n")
      output = stdout.gets.chomp # =>
      assert_equal 'Give each person 3 pieces. There will be 2 additional pieces for you to eat as soon as they leave.', output
    end
  end
  it 'works for 4 and 5' do
    ProcessPilot.pilot('divide_cake.rb', force_ruby_process_sync: true) do |stdin, stdout|
      stdout.readpartial(100) # => How many pieces of cake do you have? 11
      stdin.write("4\n")
      stdout.readpartial(100) # => How many people want some cake? 3
      stdin.write("5\n")
      output = stdout.gets.chomp # =>
      assert_equal 'Give each person 0 pieces. There will be 4 additional pieces for you to eat as soon as they leave.', output
    end
  end
end
