puts 'Start'
module Greeter
  def hello
    'hello'
  end
end

begin
  greeter = Greeter.new
rescue
  puts 'continue'
end
puts 'End'
