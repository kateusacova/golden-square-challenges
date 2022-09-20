require_relative "../lib/secret_diary.rb"

RSpec.describe SecretDiary do
  it "raises the error if the diary is locked" do
    diary = double(:diary, read: "Contents")
    secret_diary = SecretDiary.new(diary)
    expect { secret_diary.read }.to raise_error "Go away!"
  end

  it "returns the diary's contents if the diary is unlocked" do
    diary = double(:diary, read: "Contents")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "Contents"
  end
end
