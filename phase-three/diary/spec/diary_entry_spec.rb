require_relative "../lib/diary_entry.rb"

RSpec.describe DiaryEntry do
  it "constructs"  do
    entry = DiaryEntry.new("title 1", "one two three")
    expect(entry.title).to eq "title 1"
    expect(entry.contents).to eq "one two three"
  end

  it "returns the number of words in the contents" do
    entry = DiaryEntry.new("title 1", "one two three")
    expect(entry.count_words).to eq 3
  end
end