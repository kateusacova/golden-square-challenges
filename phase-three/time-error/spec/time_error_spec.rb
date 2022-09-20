require_relative "../lib/time_error.rb"

RSpec.describe TimeError do
  it "Returns difference in seconds between server time and computer time" do
    requester = double :requester
    expect(requester).to receive(:get)
    .with(URI("https://worldtimeapi.org/api/ip"))
    .and_return('{"abbreviation":"BST","client_ip":"2a02:c7f:f6f3:8f00:8d9e:a1cc:47ae:3df8","datetime":"2022-09-20T16:54:54.917677+01:00","day_of_week":2,"day_of_year":263,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1663689294,"utc_datetime":"2022-09-20T15:54:54.917677+00:00","utc_offset":"+01:00","week_number":38}')
    time_error = TimeError.new(requester)
    time = Time.new(2022, 9, 20, 16, 54, 54)
    expect(time_error.error(time)).to eq 0.917677
  end
end