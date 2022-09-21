class Greeter
  def initialize(io)
    @io = io
  end

  def greet
    @io.puts "What is your name?"
    name = @io.gets.chomp
    @io.puts "Hello, #{name}!"
  end
end

# To run the program:
greeter = Greeter.new(Kernel)
greeter.greet