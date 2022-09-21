class StringRepeater
  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Hello. I will repeat a string many times."
    @io.puts "Please enter a string"
    str = @io.gets.chomp
    @io.puts "Please enter a number of repeats"
    num = get_number(@io.gets.chomp)
    @io.puts "Here is your result:"
    @io.puts "#{str * num}"
  end
end

private

  def get_number(inp)
    fail "Enter valid number!" if inp.to_i.to_s != inp
    inp.to_i
  end


# To run the program:
# string_repeater = StringRepeater.new(Kernel)
# string_repeater.run
