require_relative "../lib/track.rb"

RSpec.describe Track do
  it "returns true if the keyword matches either the title or artist" do
    track = Track.new("Title One", "Artist One Two")
    expect(track.matches?("One")).to eq true
    expect(track.matches?("Three")).to eq false
    expect(track.matches?("Two")).to eq true
  end
end