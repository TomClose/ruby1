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
describe 'advanced_hello' do
  it 'works for a random name' do
    ProcessPilot.pilot('advanced_hello.rb', force_ruby_process_sync: true, debug: true) do |stdin, stdout|
      stdout.readpartial(100) # => "Enter your name: "
      stdin.write("daVE\n")
      stdout.readpartial(100) # => What is your home town?
      stdin.write("vienna\n")
      stdout.readpartial(100) # => What country is that in?
      stdin.write("austria\n")
      output = stdout.gets.chomp # => "Hello Boris the newt"
      assert_equal 'Hello Dave! You are from Vienna, AUSTRIA.', output
    end
  end
end
