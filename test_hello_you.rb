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
describe 'hello_you' do
  it 'works for a random name' do
    ProcessPilot.pilot('hello_you.rb', force_ruby_process_sync: true) do |stdin, stdout|
      stdout.readpartial(100) # => "Enter your name: "
      stdin.write("Adam Smith\n")

      output = stdout.gets.chomp
      assert_equal 'Hello Adam Smith', output
    end
  end
end
