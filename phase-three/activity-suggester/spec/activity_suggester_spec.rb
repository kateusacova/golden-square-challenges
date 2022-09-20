require_relative "../lib/activity_suggester_testable.rb"

RSpec.describe ActivitySuggester do
  it "calls an API to provide a suggested activity" do
    requester_dbl = double :requester
    # We expect `requester_dbl` to be called with `#get` and the right args
    # And we tell it to return a sample output of the API
    # I got this using `curl "https://www.boredapi.com/api/activity"`
    expect(requester_dbl).to receive(:get)
      .with(URI("https://www.boredapi.com/api/activity"))
      .and_return('{"activity":"Play a game of Monopoly","type":"social","participants":4,"price":0.2,"link":"","key":"1408058","accessibility":0.3}')

    activity_suggester = ActivitySuggester.new(requester_dbl)
    result = activity_suggester.suggest
    expect(result).to eq "Why not: Play a game of Monopoly"
  end
end