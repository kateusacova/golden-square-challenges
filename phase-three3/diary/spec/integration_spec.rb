require "diary"
require "diary_entry"

RSpec.describe "integration" do
  it "counts the words in all entries" do
    diary = Diary.new
    diary.add(DiaryEntry.new("title1", "one two"))
    diary.add(DiaryEntry.new("title2", "three four five"))
    expect(diary.count_words).to eq 5
  end
end