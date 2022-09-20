require_relative "../lib/diary_reader.rb"

RSpec.describe DiaryEntryFormatter do
  it "formats a diary entry" do
    diary_entry = double(:diary_entry, title: "Hello", contents: "Hello, world!")
    formatter = DiaryEntryFormatter.new(diary_entry)
    expect(formatter.format).to eq "Hello: Hello, world!"
  end
end