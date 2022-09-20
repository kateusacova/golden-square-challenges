class Diary

  def initialize
    @entries = []
  end

  def add(entry) 
    @entries << entry
  end

  def entries
    @entries
  end

  def count_words
    @entries.sum(&:count_words)
  end
end


