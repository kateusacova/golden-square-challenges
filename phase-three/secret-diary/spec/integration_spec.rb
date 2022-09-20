require_relative "../lib/secret_diary.rb"
require_relative "../lib/diary.rb"

RSpec.describe "Secret Diary Integration" do
  it "fails if diary is locked" do
    diary = Diary.new("Contents")
    secret_diary = SecretDiary.new(diary)
    expect { secret_diary.read }.to raise_error "Go away!"
  end

  it "returns the diary's contents if the diary is unlocked" do
    diary = Diary.new("Contents")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "Contents"
  end
end
