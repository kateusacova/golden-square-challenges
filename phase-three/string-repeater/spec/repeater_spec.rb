require_relative "../lib/repeater.rb"

RSpec.describe StringRepeater do
  it "Fails if invalid input " do
    io = double :io
    expect(io).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(io).to receive(:puts).with("Please enter a string").ordered
    expect(io).to receive(:gets).and_return("Word")
    expect(io).to receive(:puts).with("Please enter a number of repeats").ordered
    expect(io).to receive(:gets).and_return("Kate")
    repeater = StringRepeater.new(io)
    expect { repeater.run }.to raise_error "Enter valid number!"
  end

  it "Repeats given string for a specified number of repeats" do
    io = double :io
    expect(io).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(io).to receive(:puts).with("Please enter a string").ordered
    expect(io).to receive(:gets).and_return("Word")
    expect(io).to receive(:puts).with("Please enter a number of repeats").ordered
    expect(io).to receive(:gets).and_return("3")
    expect(io).to receive(:puts).with("Here is your result:").ordered
    expect(io).to receive(:puts).with("WordWordWord").ordered
    repeater = StringRepeater.new(io)
    repeater.run
  end
end