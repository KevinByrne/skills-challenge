require 'diary_entry'

RSpec.describe DiaryEntry do
  it 'creates a new instance of Diary Entry including Title and Contents' do
      my_diary = DiaryEntry.new("my title", "my contents")
  end

  it 'returns title as a string' do
    my_diary = DiaryEntry.new("my title", "my contents")
    result = my_diary.title
    expect(result).to eq "my title"
  end

  it 'returns the contents as a string' do
    my_diary = DiaryEntry.new("my title", "my contents")
    result = my_diary.contents
    expect(result).to eq "my contents"
  end

  it 'returns the number of words as an integer' do
    my_diary = DiaryEntry.new("my title", "my contents")
    result = my_diary.count_words
    expect(result).to eq 2
  end

  it 'returns an integer representing an estimate of reading time in minutes' do
    my_diary = DiaryEntry.new("my title", "my contents")
    result = my_diary.reading_time(200)
    expect(result).to eq "It will take approx. 0 minutes to read this text"
  end

  it "returns a sting with a chunk of contents that the user could read in the given number of minutes" do
    my_diary = DiaryEntry.new("my title", "my contents")
    result = my_diary.reading_chunk(200, 60)
    expect(result).to eq 12000
  end

end