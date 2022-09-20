require_relative "../lib/track.rb"
require_relative "../lib/music_library.rb"

RSpec.describe "Music Library Integration" do
  it "returns all added tracks to the library" do
    library = MusicLibrary.new
    track_1 = Track.new("Title One", "Artist Two") 
    track_2 = Track.new("Title Two", "Artist Three") 
    library.add(track_1)
    library.add(track_2)
    expect(library.all).to eq [track_1, track_2]
  end

  it "returns a list of tracks that match the keyword" do
    library = MusicLibrary.new
    track_1 = Track.new("Title One", "Artist Two") 
    track_2 = Track.new("Title Two", "Artist Three") 
    track_3 = Track.new("Title Two", "Artist Three") 
    library.add(track_1)
    library.add(track_2)
    library.add(track_3)
    expect(library.search("Three")).to eq [track_2, track_3]
  end
end