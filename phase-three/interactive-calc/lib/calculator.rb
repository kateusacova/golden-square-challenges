class InteractiveCalculator
  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Hello. I will subtract two numbers."
    @io.puts "Please enter a number"
    num_1 = get_number
    @io.puts "Please enter another number"
    num_2 = get_number
    @io.puts "Here is your result:"
    @io.puts "#{num_1} - #{num_2} = #{result(num_1, num_2)}"
  end
end

private

def get_number
  response = @io.gets.chomp
  if response.to_i.to_s == response
    response.to_i
  else
    fail "You must enter a number!" 
  end
end

def result(num_1, num_2)
  num_1 - num_2
end

# To run the program:
# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run
