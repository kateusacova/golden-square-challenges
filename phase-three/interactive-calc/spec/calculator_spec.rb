require_relative "../lib/calculator.rb"

RSpec.describe InteractiveCalculator do
  it "Asks for and subtracts one number from another and returns the result" do
    io = double :io
    expect(io).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
    expect(io).to receive(:puts).with("Please enter a number").ordered
    expect(io).to receive(:gets).and_return("4")
    expect(io).to receive(:puts).with("Please enter another number").ordered
    expect(io).to receive(:gets).and_return("3")
    expect(io).to receive(:puts).with("Here is your result:").ordered
    expect(io).to receive(:puts).with("4 - 3 = 1").ordered

    calc = InteractiveCalculator.new(io)
    calc.run
  end

  it "fails if invalid input" do
    io = double :io
    expect(io).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
    expect(io).to receive(:puts).with("Please enter a number").ordered
    expect(io).to receive(:gets).and_return("4")
    expect(io).to receive(:puts).with("Please enter another number").ordered
    expect(io).to receive(:gets).and_return("Kate")

    calc = InteractiveCalculator.new(io)
    expect { calc.run }.to raise_error "You must enter a number!"
  end
end