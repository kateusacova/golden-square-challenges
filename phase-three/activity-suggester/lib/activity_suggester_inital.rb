require 'net/http'
require 'json'

class ActivitySuggester
  def suggest
    response = make_request_to_api
    return "Why not: #{response["activity"]}"
  end

  private

  # This method calls an 'API' on the internet to get a random activity.
  # An API is a way of allowing programs to request data from other programs.
  # this is undeterministic method
  def make_request_to_api
    text_response = Net::HTTP.get("www.boredapi.com", "/api/activity")
    return JSON.parse(text_response)
  end
end

# Usage
# =====
# activity_suggester = ActivitySuggester.new
# activity_suggester.suggest # => "Why not: Learn how to use a french press"
# activity_suggester.suggest # => "Why not: Hold a video game tournament with some friends"