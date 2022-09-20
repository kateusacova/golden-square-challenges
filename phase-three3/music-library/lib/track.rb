class Track
  def initialize(title, artist) 
    @title = title
    @artist = artist
  end

  def matches?(keyword) 
    @title.split.include?(keyword)
    @artist.split.include?(keyword)
  end
end