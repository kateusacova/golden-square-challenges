require_relative "../lib/greeter.rb"

RSpec.describe Greeter do
  it "returns the greeting with the name entered by the user" do
    io = double :io
    expect(io).to receive(:puts).with("What is your name?")
    expect(io).to receive(:gets).and_return("Kate")
    expect(io).to receive(:puts).with("Hello, Kate!")

    greeter = Greeter.new(io)
    greeter.greet
  end
end