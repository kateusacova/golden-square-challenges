require_relative "../lib/diary.rb"

RSpec.describe Diary do
  it "returns the contents of the diary" do
    diary = Diary.new("Contents here")
    expect(diary.read).to eq "Contents here"
  end
end