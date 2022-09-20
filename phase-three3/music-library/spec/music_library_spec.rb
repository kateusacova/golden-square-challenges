require_relative "../lib/music_library.rb"

RSpec.describe MusicLibrary do
  it "returns all added tracks to the library" do
    library = MusicLibrary.new
    track_1 = double(:track)
    track_2 = double(:track)
    library.add(track_1)
    library.add(track_2)
    expect(library.all).to eq [track_1, track_2]
  end

  it "returns a list of tracks that match the keyword" do
    library = MusicLibrary.new
    track_1 = double(:track, matches?: true)
    track_2 = double(:track, matches?: true)
    track_3 = double(:track, matches?: false)
    library.add(track_1)
    library.add(track_2)
    library.add(track_3)
    expect(library.search("keyword")).to eq [track_1, track_2]
  end
end
