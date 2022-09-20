class DiaryEntryFormatter
  def initialize(diary_entry) 
    @diary_entry = diary_entry
  end

  def format
    "#{@diary_entry.title}: #{@diary_entry.contents}"
  end
end